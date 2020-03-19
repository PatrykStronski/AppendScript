#!/bin/bash

for i in ./dir/*fs_.txt;
do
        diffchr=$(grep "mapped" "${i}" | tail -n 1 | cut -d ' ' -f 1)
        echo "${diffchr}"
        file_content=$(echo "${i%%.*}" "${diffchr}")
        echo $file_content 
done
