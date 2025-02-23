#!/bin/bash
# script : make backup files by @eilleen1202
# usage : ./backup.sh target_path(optional/origin) location(placeto make a backup folder) name(of zipfile)
# effect : Create or modify in readme.txt and zip file named name

if [ $# -eq 3 ]; then
    targets=${1}
    location=${2}
    name=${3}
else 
    targets=$(pwd)
    location=${1}
    name=${2}
fi

# Ensure the target path ends with a slash
targets="${targets%/}/"
location="${location%/}/"

files=$(ls ${targets})

echo "This text file documents the purpose and usage of tools:" > "${location}readme.txt"

for filename in ${files}; do
    if [ -r "${targets}${filename}" ]; then
        echo " " >> "${location}readme.txt"
        echo ":: ${filename} ::" >> "${location}readme.txt"
        # Filter only lines starting with #
        grep "^#" "${targets}${filename}" >> "${location}readme.txt"
    fi
done

zip "${location}${name}.zip" -r ${files}