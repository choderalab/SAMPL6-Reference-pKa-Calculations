tail -n +2 ${1} | while IFS=, read protonated deprotonated;do
    echo "Protonated: ${protonated}, Deprotonated: ${deprotonated}"
    $SCHRODINGER/jaguar pka -n -csrch -prot ${protonated}.in -deprot ${deprotonated}.in "-jobname=jag_${protonated}_${deprotonated}" -HOST "lsf-cpu" -PARALLEL 10 
done 

