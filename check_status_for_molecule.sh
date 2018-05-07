for molnum in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
do
    tail -n +2 microstate_pairs/SM${molnum}_microstate_pairs.csv | while IFS=, read protonated deprotonated;do
        expected_out="jaguar_input_files/jag_${protonated}_${deprotonated}.out"
        if [[ ! -f ${expected_out} ]]; then
            echo rerun  ${protonated},${deprotonated}
        else
            awk -v pro="${protonated}" -v dep="${deprotonated}" '/Final weighted pKa value is/{print pro,",",dep,",",$6}'  ${expected_out}
        fi
    done 
done
