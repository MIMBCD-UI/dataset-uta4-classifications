#!/bin/bash
# Purpose: Read Comma Separated CSV File
# Author: Francisco Maria Calisto
# ------------------------------------------
cd dataset
INPUT=severities.csv
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 3; }
while read patient_id birads_final
do
	echo "Patient ID : $patient_id"
	echo "BIRADS : $birads_final"
done < $INPUT
IFS=$OLDIFS
