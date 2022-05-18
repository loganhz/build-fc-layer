#!/bin/bash

# cd to app root
CWD=$(dirname $0)
if [[ `basename $(pwd)` = 'scripts' ]]; then
    cd ../
else
    cd `dirname $CWD`
fi

rm -rf dist
docker rm -f fc-nodejs-local-build
docker build -t fc-nodejs-local-build .
docker run --name fc-nodejs-local-build fc-nodejs-local-build bash
mkdir -p dist
docker cp fc-nodejs-local-build:/tmp/layer.zip ./dist