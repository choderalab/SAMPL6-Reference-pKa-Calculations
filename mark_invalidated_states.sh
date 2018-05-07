# read states for which output files need to be deleted (due to changed input, et cetera)
# invalidated_states.txt is a manually constructed file, with one microstate name per line
# SMxx_microyyy format

while read p; do
  echo jag_*$p* >> to_delete.txt
done <invalidated_states.txt
