#! /usr/bin/bash

schropy='/data/chodera/schrodinger/schrodinger2017-4-advanced/run python'

# quit on first error 
set -e
mkdir -p "jaguar_input_files"

cd microstates

for filename in *.maegz
do
    # use alias to schrodingers python and run the script.
    ${schropy} ../make_jaguar_input2.py ${filename}
done

cd ..

mv microstates/*.in jaguar_input_files
