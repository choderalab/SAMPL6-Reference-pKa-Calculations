echo "Protonated: ${1}, Deprotonated: ${2}"
$SCHRODINGER/jaguar pka -n -csrch -prot ${1}.in -deprot ${2}.in "-jobname=jag_${1}_${2}" -HOST "lsf-cpu" -PARALLEL 10 -WAIT 
