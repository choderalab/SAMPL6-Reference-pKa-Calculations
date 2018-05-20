tail -n +2 ${1} | while IFS=, read protonated deprotonated;do
bsub << SCRIPT
#!/usr/bin/bash
#BSUB -J submit_${protonated}_${deprotonated}
#BSUB -n 11
#BSUB -R rusage[mem=8]
#BSUB -q cpuqueue
#BSUB -W  120:00
#BSUB -We  48:00
#BSUB -o %J.stdout
#BSUB -eo %J.stderr
#BSUB -L /bin/bash

cd /home/rustenburg/data/SAMPL6/Jaguar_Ref_pKa/jaguar_input_files
echo "Protonated: ${protonated}, Deprotonated: ${deprotonated}"
$SCHRODINGER/jaguar pka -n -csrch -prot ${protonated}.in -deprot ${deprotonated}.in "-jobname=jag_${protonated}_${deprotonated}" -PARALLEL 10 -WAIT  
SCRIPT

done 

