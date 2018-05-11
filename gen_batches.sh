tail -n +2 to_resubmit.txt | split -l 20 - split_
for file in split_*
do
    head -n 1 to_resubmit.txt > tmp_file
    cat $file >> tmp_file
    mv -f tmp_file $file
done
