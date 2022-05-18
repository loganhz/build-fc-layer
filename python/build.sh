#!/bin/bash

# cd to app root
CWD=$(dirname $0)
if [[ `basename $(pwd)` = 'scripts' ]]; then
    cd ../
else
    cd `dirname $CWD`
fi

rm -rf dist
docker rm -f fc-python-local-build
docker build -t fc-python-local-build .
docker run --name fc-python-local-build fc-python-local-build bash
mkdir -p dist
docker cp fc-python-local-build:/tmp/layer.zip ./dist