#! /bin/bash

# get path of current script: https://stackoverflow.com/a/39340259/207661
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd "$SCRIPT_DIR"  >/dev/null

set -e
set -x

MIN_GCC_VERSION=6.0.0
gccBuild=false
function version_less_than_equal_to() { test "$(printf '%s\n' "$@" | sort -V | head -n 1)" = "$1"; }

# Parse command line arguments
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    --gcc)
    gccBuild=true
    shift # past argument
    ;;
esac
done

# check for rpclib
if [ ! -d "./external/rpclib/rpclib-2.2.1" ]; then
    echo "ERROR: new version of AirSim requires newer rpclib."
    echo "please run setup.sh first and then run build.sh again."
    exit 1
fi


    CMAKE=$(which cmake)


# set up paths of cc and cxx compiler
if $gccBuild; then
    # variable for build output
    build_dir=build_gcc_debug
    # gcc tools
    gcc_ver=$(gcc -dumpfullversion)
    gcc_path=$(which cmake)
    if [[ "$gcc_path" == "" ]] ; then
        echo "ERROR: run setup.sh to install a good version of gcc."
        exit 1
    fi
    if version_less_than_equal_to $gcc_ver $MIN_GCC_VERSION; then
        export CC="gcc-6"
        export CXX="g++-6"
    else
        export CC="gcc"
        export CXX="g++"
    fi
else
    #check for correct verion of llvm
    if [[ ! -d "llvm-source-50" ]]; then
        if [[ -d "llvm-source-39" ]]; then
            echo "Hello there! We just upgraded AirSim to Unreal Engine 4.18."
            echo "Here are few easy steps for upgrade so everything is new and shiny :)"
            echo "https://github.com/Microsoft/AirSim/blob/master/docs/unreal_upgrade.md"
            exit 1
        else
            echo "The llvm-souce-50 folder was not found! Mystery indeed."
        fi
    fi

    # check for libc++
    if [[ !(-d "./llvm-build/output/lib") ]]; then
        echo "ERROR: clang++ and libc++ is necessary to compile AirSim and run it in Unreal engine"
        echo "Please run setup.sh first."
        exit 1
    fi

    # variable for build output
    build_dir=build_debug
    if [ "$(uname)" == "Darwin" ]; then
        export CC=/usr/local/opt/llvm-5.0/bin/clang-5.0
        export CXX=/usr/local/opt/llvm-5.0/bin/clang++-5.0
    else
        export CC="clang-5.0"
        export CXX="clang++-5.0"
    fi
fi

#install EIGEN library
if [[ !(-d "./AirLib/deps/eigen3/Eigen") ]]; then
    echo "### Eigen is not installed. Please run setup.sh first."
    exit 1
fi

echo "putting build in $build_dir folder, to clean, just delete the directory..."

# this ensures the cmake files will be built in our $build_dir instead.
if [[ -f "./cmake/CMakeCache.txt" ]]; then
    rm "./cmake/CMakeCache.txt"
fi
if [[ -d "./cmake/CMakeFiles" ]]; then
    rm -rf "./cmake/CMakeFiles"
fi

if [[ ! -d $build_dir ]]; then
    mkdir -p $build_dir
    pushd $build_dir  >/dev/null

    "$CMAKE" ../cmake -DCMAKE_BUILD_TYPE=Debug \
        || (popd && rm -r $build_dir && exit 1)
    popd >/dev/null
fi

pushd $build_dir  >/dev/null
# final linking of the binaries can fail due to a missing libc++abi library
# (happens on Fedora, see https://bugzilla.redhat.com/show_bug.cgi?id=1332306).
# So we only build the libraries here for now
make -j`nproc`
popd >/dev/null


mkdir -p AirLib/lib/x64/Debug
mkdir -p AirLib/deps/rpclib/lib
mkdir -p AirLib/deps/MavLinkCom/lib
cp $build_dir/output/lib/libAirLib.a AirLib/lib
cp $build_dir/output/lib/libMavLinkCom.a AirLib/deps/MavLinkCom/lib
cp $build_dir/output/lib/librpc.a AirLib/deps/rpclib/lib/librpc.a

# Update AirLib/lib, AirLib/deps, Plugins folders with new binaries
rsync -a --delete $build_dir/output/lib/ AirLib/lib/x64/Debug
rsync -a --delete external/rpclib/rpclib-2.2.1/include AirLib/deps/rpclib
rsync -a --delete MavLinkCom/include AirLib/deps/MavLinkCom
rsync -a --delete AirLib Unreal/Plugins/AirSim/Source

# Update Blocks project
Unreal/Environments/Blocks/clean.sh
mkdir -p Unreal/Environments/Blocks/Plugins
rsync -a --delete Unreal/Plugins/AirSim Unreal/Environments/Blocks/Plugins

set +x

echo ""
echo ""
echo "=================================================================="
echo " AirSim plugin is built! Here's how to build Unreal project."
echo "=================================================================="
echo "If you are using Blocks environment, its already updated."
echo "If you are using your own environment, update plugin using,"
echo "rsync -a --delete Unreal/Plugins path/to/MyUnrealProject"
echo ""
echo "For help see:"
echo "https://github.com/Microsoft/AirSim/blob/master/docs/build_linux.md"
echo "=================================================================="


popd >/dev/null
