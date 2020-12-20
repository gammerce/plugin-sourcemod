#!/usr/bin/env bash

set -e

if [ "$#" -lt 1 ]; then
    echo "Usage: ./build.sh <version> <mode>"
    exit 1
fi

BUILD_VERSION=$1
MODE=${2:-watch}
DIR="$( cd "$( dirname $( dirname "${BASH_SOURCE[0]}" ) )" && pwd )"

# PREPARE
mkdir -p "$DIR/plugins"
chmod 777 "$DIR/plugins"
rm -f $DIR/plugins/*

docker run \
    --rm \
    -it \
    -v "$DIR/plugins":/tmp/builds \
    -v "$DIR/scripting":/tmp/sources \
    -v "$DIR/scripting/include/shopsms.inc":/tmp/addons/sourcemod/scripting/include/shopsms.inc \
    -v "$DIR/scripting/include/shopsms_const.inc":/tmp/addons/sourcemod/scripting/include/shopsms_const.inc \
    budziam/sourcemod-builder:${BUILD_VERSION} \
    ${MODE}
