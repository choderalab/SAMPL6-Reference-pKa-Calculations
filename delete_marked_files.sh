# delete files marked by to_delete.txt
# please

while read p; do
    if [[ $1 = "rm" ]]; then
    find jaguar_input_files -name $p -exec rm -r "{}" \;
    else
        find jaguar_input_files -name $p
    fi
done <to_delete.txt
