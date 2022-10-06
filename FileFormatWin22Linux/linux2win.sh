#!/bin/bash

# for debug
set -x

folder=$(cd $1 && pwd)
filelists=$(/bin/ls ${folder})

for file in ${filelists[@]}; do
    file=${folder}/${file}
    if ! test -d ${file}; then
        unix2dos ${file}
    fi
done
