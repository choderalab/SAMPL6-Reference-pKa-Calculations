#! /usr/bin/bash

schropy='/data/chodera/schrodinger/schrodinger2017-4-advanced/run python'

# quit on first error 
set -e

cd jaguar_input_files

for filename in SM*.mae
do
    # use alias to schrodingers python and run the script.
    ${schropy} ../make_jaguar_input2.py ${filename}
done

cd ..

