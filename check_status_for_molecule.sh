echo "Protonated, Deprotonated" > to_resubmit.txt

for molnum in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
do
    echo ${molnum}
    tail -n +2 microstate_pairs/SM${molnum}_microstate_pairs.csv | while IFS=, read protonated deprotonated;do
        expected_out="jaguar_input_files/jag_${protonated}_${deprotonated}.out"
        if [[ ! -f ${expected_out} ]]; then
            echo jag_${protonated}_${deprotonated}
            grep 'Error' jaguar_input_files/jag_${protonated}_${deprotonated}.log            
            echo jag_${protonated}_${deprotonated}* >> to_delete.txt
            echo ${protonated},${deprotonated} >> to_resubmit.txt            
        else
            awk -v pro="${protonated}" -v dep="${deprotonated}" '/Final weighted pKa value is/{print pro,",",dep,",",$6}'  ${expected_out}
        fi
    done 
done
