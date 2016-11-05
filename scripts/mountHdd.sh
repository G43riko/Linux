# !/bin/bash

dir="/media/HDD"

if ! [ -d "$dir" ]; then
        mkdir "$dir";
fi

sudo mount /dev/sdb1 "$dir"
