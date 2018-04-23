#! /usr/bin/bash

# quit on first error 
set -e
mkdir -p "jaguar_input_files"

cd microstates

for filename in microstates/*.maegz
do
    # use alias to schrodingers python and run the script.
    schropy make_jaguar_input2 ${filename}
done

cd ..

mv microstates/*.in jaguar_input_files