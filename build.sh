#!/bin/bash

BASE_PATH=$(cd `dirname $0`; pwd)

profileActive=prod
if [ -n "$1" ]; then
    profileActive=$1
fi

${BASE_PATH:-.}/docs/yuicompressor/gzjs.sh

mvn -X clean package -Dmaven.test.skip=true -P$profileActive