#!/usr/bin/env bash
# to run
molecule_name="SM01 SM03 SM05 SM07 SM09 SM11 SM13 SM15 SM17 SM19 SM21 SM23 SM02 SM04 SM06 SM08 SM10 SM12 SM14 SM16 SM18 SM20 SM22 SM24"


function compress_files {
    file_prefix=$1
    echo $1
    pushd output/microscopic/${file_prefix}
    zip -rm logfiles *.log
    zip -rm maefiles *.mae
    popd 
}

# make func available to parallel
export -f compress_files
avail=1
echo running on $avail cores
parallel -j${avail} compress_files ::: ${molecule_name}

