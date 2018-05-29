#!/usr/bin/env bash
# to run
molecule_name="SM18"
phrange="4.8"

function run_epik_at_pH {
    file_prefix=$1
    ph=$2
    echo $1 $2
    mkdir -p output/states_per_pH/${file_prefix}
    cp input/${file_prefix}.smi output/states_per_pH/${file_prefix}/.
    pushd output/states_per_pH/${file_prefix}
    $SCHRODINGER/ligprep -ismi ${file_prefix}.smi -omae ${file_prefix}.${ph}.mae -WAIT -i 1 # neutralize and store as mae
    $SCHRODINGER/epik -imae ${file_prefix}.${ph}.mae -omae ${file_prefix}.epik.${ph}.mae -pht 5 -ms 100 -ph ${ph} -WAIT -NO_JOBCONTROL
    # extract atom properties
    $SCHRODINGER/utilities/proplister ${file_prefix}.epik.${ph}.mae -atom_bond_props -o ${file_prefix}.epik.${ph}.prop.csv -c 
    $SCHRODINGER/utilities/structconvert -imae ${file_prefix}.epik.${ph}.mae -osd ${file_prefix}.epik.${ph}.sdf
    $SCHRODINGER/utilities/proplister ${file_prefix}.epik.${ph}.mae -a -o ${file_prefix}.epik.${ph}.prop -c
    popd 
}

# make func available to parallel
export -f run_epik_at_pH
# Run Epik to enumerate all "reasonable" protomers/tautomers
avail=`nproc`
echo running on $avail cores
parallel -j${avail} run_epik_at_pH ::: ${molecule_name}  ::: ${phrange} 

