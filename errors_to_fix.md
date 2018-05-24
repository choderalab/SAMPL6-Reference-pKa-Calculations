# Notes on errors

# List of invalidated structures
Any runs containing these structures will need to be rerun

SM03_micro021
SM03_micro022
SM08_micro003
SM08_micro004
SM08_micro006
SM08_micro008
SM08_micro009
SM08_micro010
SM08_micro011
SM10_micro009 
SM10_micro033
SM18_micro017
SM18_micro055
SM18_micro059
SM19_micro005
SM19_micro016
SM20_micro005
SM21_micro001
SM21_micro002
SM21_micro006
SM21_micro012
SM21_micro014
SM21_micro015
SM21_micro025
SM21_micro029
SM21_micro030
SM21_micro034
SM23_micro005
SM23_micro007
SM23_micro011
SM23_micro019
SM23_micro024
SM23_micro028
SM23_micro034
SM23_micro036
SM23_micro040
SM23_micro042
SM23_micro046

## SM03

* jag_SM03_micro021_SM03_micro001.log:Error: prot/deprot structures appear to be reversed:

This file never got hydrogens or minimized because the bond orders automatically generated 
lead to atom types not available in macromodel. I started from SM03_micro001 instead and 
shifted the bonds in maestro, and added the missing hydrogen. Exported structure to maestro.


* jag_SM03_micro022_SM03_micro009.log:Error: more than 1 heavy atom differs by 1 proton in:
* jag_SM03_micro022_SM03_micro013.log:Error: more than 1 heavy atom differs by 1 proton in:

SM03_micro022 does not have the same heavy atom names as 13 and 9.
Regenerating SM03_micro022 manually from 13 in maestro.


## SM06 
One subjob failed. will rerun.
* jag_SM06_micro002_SM06_micro004.log:  Error: jaguar died in program scf

One subjob failed. will rerun this pair.

## SM08

* jag_SM08_micro002_SM08_micro008.log:Error: heavy atoms are different in input files:
* jag_SM08_micro002_SM08_micro010.log:Error: heavy atoms are different in input files:
* jag_SM08_micro006_SM08_micro004.log:Error: heavy atoms are different in input files:
* jag_SM08_micro008_SM08_micro006.log:Error: heavy atoms are different in input files:
* jag_SM08_micro011_SM08_micro003.log:Error: heavy atoms are different in input files:

The microstates for this molecule dont have consistent heavy atom names. Going to rebuild all of them. 

## SM10

* jag_SM10_micro009_SM10_micro013.log:Error: heavy atoms are different in input files:
* jag_SM10_micro009_SM10_micro034.log:Error: heavy atoms are different in input files:
* jag_SM10_micro026_SM10_micro009.log:Error: heavy atoms are different in input files:
* jag_SM10_micro033_SM10_micro006.log:Error: heavy atoms are different in input files:
* jag_SM10_micro033_SM10_micro007.log:Error: heavy atoms are different in input files:

The heavy atom names of state  SM10_micro009 and  SM10_micro033 are not compatible with the other states. Manually constructing them from SM10_micro006

## SM18

* jag_SM18_micro017_SM18_micro075.log:Error: heavy atoms are different in input files:
* jag_SM18_micro055_SM18_micro042.log:Error: heavy atoms are different in input files:
* jag_SM18_micro055_SM18_micro072.log:Error: heavy atoms are different in input files:
* jag_SM18_micro059_SM18_micro021.log:Error: heavy atoms are different in input files:
* jag_SM18_micro059_SM18_micro025.log:Error: heavy atoms are different in input files:

The heavy atom names in SM18_micro017 SM18_micro055 SM18_micro059 are different from the other states. 
Manually constructing them from SM18_micro042.



* jag_SM18_micro075_SM18_micro064.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
* jag_SM18_micro075_SM18_micro064.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
* jag_SM18_micro075_SM18_micro064.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
* jag_SM18_micro075_SM18_micro064.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
* jag_SM18_micro075_SM18_micro064.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout

timeout, will rerun

## SM19
jag_SM19_micro001_SM19_micro016.log:Error: heavy atoms are different in input files:
jag_SM19_micro005_SM19_micro002.log:Error: more than 1 heavy atom differs by 1 proton in:
jag_SM19_micro005_SM19_micro018.log:Error: more than 1 heavy atom differs by 1 proton in:
jag_SM19_micro016_SM19_micro004.log:Error: more than 1 heavy atom differs by 1 proton in:
jag_SM19_micro016_SM19_micro008.log:Error: more than 1 heavy atom differs by 1 proton in:

Heavy atom names different between SM19_micro005, SM19_micro016 and the other structures. Manually Recreating from micro001.


## SM20
jag_SM20_micro005_SM20_micro004.log:Error: heavy atoms are different in input files:

Heavy atoms of SM20_micro005 are different from the other structures. Fixing by rebuilding from SM20_micro004.

## SM21

jag_SM21_micro001_SM21_micro018.log:Error: heavy atoms are different in input files:
jag_SM21_micro001_SM21_micro020.log:Error: heavy atoms are different in input files:
jag_SM21_micro002_SM21_micro020.log:Error: heavy atoms are different in input files:
jag_SM21_micro003_SM21_micro015.log:Error: heavy atoms are different in input files:
jag_SM21_micro006_SM21_micro012.log:Error: more than 1 heavy atom differs by 1 proton in:
jag_SM21_micro012_SM21_micro021.log:Error: heavy atoms are different in input files:
jag_SM21_micro015_SM21_micro021.log:Error: heavy atoms are different in input files:
jag_SM21_micro018_SM21_micro025.log:Error: heavy atoms are different in input files:
jag_SM21_micro020_SM21_micro012.log:Error: heavy atoms are different in input files:
jag_SM21_micro024_SM21_micro006.log:Error: heavy atoms are different in input files:
jag_SM21_micro025_SM21_micro021.log:Error: heavy atoms are different in input files:
jag_SM21_micro026_SM21_micro001.log:Error: heavy atoms are different in input files:
jag_SM21_micro027_SM21_micro001.log:Error: heavy atoms are different in input files:
jag_SM21_micro029_SM21_micro002.log:Error: more than 1 heavy atom differs by 1 proton in:
jag_SM21_micro029_SM21_micro024.log:Error: heavy atoms are different in input files:
jag_SM21_micro031_SM21_micro002.log:Error: heavy atoms are different in input files:
jag_SM21_micro033_SM21_micro029.log:Error: heavy atoms are different in input files:
jag_SM21_micro034_SM21_micro026.log:Error: heavy atoms are different in input files:
jag_SM21_micro034_SM21_micro029.log:Error: more than 1 heavy atom differs by 1 proton in:
jag_SM21_micro035_SM21_micro030.log:Error: heavy atoms are different in input files:
jag_SM21_micro036_SM21_micro034.log:Error: heavy atoms are different in input files:

Rebuilding heavy atoms for 
SM21_micro001
SM21_micro002
SM21_micro006
SM21_micro012
SM21_micro014
SM21_micro015
SM21_micro025
SM21_micro029
SM21_micro030
SM21_micro034

Starting from SM21_micro018

## SM23
jag_SM23_micro005_SM23_micro034.log:Error: more than 1 heavy atom differs by 1 proton in:
jag_SM23_micro007_SM23_micro012.log:Error: heavy atoms are different in input files:
jag_SM23_micro007_SM23_micro020.log:Error: heavy atoms are different in input files:
jag_SM23_micro007_SM23_micro026.log:Error: heavy atoms are different in input files:
jag_SM23_micro012_SM23_micro034.log:Error: heavy atoms are different in input files:
jag_SM23_micro019_SM23_micro012.log:Error: heavy atoms are different in input files:
jag_SM23_micro020_SM23_micro036.log:Error: heavy atoms are different in input files:
jag_SM23_micro022_SM23_micro028.log:Error: heavy atoms are different in input files:
jag_SM23_micro024_SM23_micro012.log:Error: heavy atoms are different in input files:
jag_SM23_micro025_SM23_micro005.log:Error: heavy atoms are different in input files:
jag_SM23_micro038_SM23_micro007.log:Error: heavy atoms are different in input files:
jag_SM23_micro039_SM23_micro007.log:Error: heavy atoms are different in input files:
jag_SM23_micro042_SM23_micro024.log:Error: more than 1 heavy atom differs by 1 proton in:
jag_SM23_micro042_SM23_micro025.log:Error: heavy atoms are different in input files:
jag_SM23_micro043_SM23_micro024.log:Error: heavy atoms are different in input files:
jag_SM23_micro045_SM23_micro040.log:Error: heavy atoms are different in input files:
jag_SM23_micro046_SM23_micro038.log:Error: heavy atoms are different in input files:
jag_SM23_micro047_SM23_micro042.log:Error: heavy atoms are different in input files:
jag_SM23_micro046_SM23_micro042.log:Error: more than 1 heavy atom differs by 1 proton in:
jag_SM23_micro048_SM23_micro046.log:Error: heavy atoms are different in input files:



Heavy atoms are different between some states.
Regenerating mae files for 

SM23_micro005
SM23_micro007
SM23_micro011
SM23_micro019
SM23_micro024
SM23_micro028
SM23_micro034
SM23_micro036
SM23_micro040
SM23_micro042
SM23_micro046

using SM23_micro012 as template

jag_SM23_micro044_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg 
"/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro044_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro044_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro044_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro044_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro044_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro044_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro044_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro045_SM23_micro039.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro046_SM23_micro040.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro046_SM23_micro040.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro046_SM23_micro040.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro046_SM23_micro040.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro046_SM23_micro040.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro046_SM23_micro040.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro046_SM23_micro040.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro046_SM23_micro040.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro041.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro043.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro043.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro043.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro043.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro043.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro043.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro043.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro047_SM23_micro043.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro044.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro044.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro044.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro044.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro044.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro044.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro044.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro044.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro044.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro045.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro045.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro045.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro045.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro045.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro045.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro045.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro045.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro045.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro047.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro047.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro047.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro047.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro047.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro047.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro047.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro047.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM23_micro048_SM23_micro047.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout

Timeout rerunning.

## SM 24

jag_SM24_micro001_SM24_micro007.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro001_SM24_micro007.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro001_SM24_micro007.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro001_SM24_micro007.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro001_SM24_micro007.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro001_SM24_micro007.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro001_SM24_micro028.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro001_SM24_micro028.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro001_SM24_micro028.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro001_SM24_micro028.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro001_SM24_micro028.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro006_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro006_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro006_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro006_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro006_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro006_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro006_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro007_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro007_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro007_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro007_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro007_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro007_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro007_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro020_SM24_micro001.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro024_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro024_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro024_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro024_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro024_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro024_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro024_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro024_SM24_micro002.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro030.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro030.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro030.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro030.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro030.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro030.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro030.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro030.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro030.log:  Error: jaguar died in program geopt
jag_SM24_micro034_SM24_micro030.log:  Errors from job record lt09-1-5aed537a:
jag_SM24_micro034_SM24_micro031.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro031.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro031.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro031.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro031.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro031.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro031.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro034_SM24_micro031.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro032.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro032.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro032.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro032.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro032.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro032.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro032.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro032.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro033.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro033.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro033.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro033.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro033.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro033.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout
jag_SM24_micro035_SM24_micro033.log:  Error: in replying to 'JPROXYPORT lilac rustenburg "/data/chodera/schrodinger/schrodinger2017-4-advanced"' - dial tcp lilac:35321: i/o timeout

timeout rerunning