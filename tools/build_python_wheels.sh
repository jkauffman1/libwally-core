#!/bin/bash

# Creates wheel files (*.whl) plus sha256 checksums for python 2/3
# The wheels can be installed with:
#   pip install wallycore*.whl
# Like all tools/scripts, this should be run from the project root.

function build {
    ./tools/cleanup.sh
    virtualenv -p $1 .venv
    source .venv/bin/activate
    PYTHONDONTWRITEBYTECODE= $1 setup.py install
    cd dist
    wheel convert *.egg
    rm *.egg
    WHL_FILE=(*.whl)
    sha256sum $WHL_FILE > $WHL_FILE.sha256
    cd ..
    cp dist/* .
    rm -rf dist
    deactivate
}

build python2
build python3

./tools/cleanup.sh

