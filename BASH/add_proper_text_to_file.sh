#!/bin/bash

echo "This script will help you to put your valid input into the file."

#Adding information to specfic file.
lun_number=1025E43674X7A31BV6
final_lun_nr=$(echo "$lun_number" | tr [:upper:] [:lower:])

echo "This part was append to config file: "
echo ""
echo ""
echo "LUN wwid numer = $final_lun_nr" | tee -a add_info_here
echo "      LUN mode 660"| tee -a add_info_here
echo "Access granted"| tee -a add_info_here
echo "" | tee -a add_info_here

# Adding information to specific file based on input from file.
echo "!!!This part was append to config file in for loop: !!!"
echo ""

for lun_id in $(cat lun_information)
do
final_lun_nr=$(echo "$lun_id" | tr [:upper:] [:lower:])

echo "LUN wwid numer = $final_lun_nr" | tee -a add_info_here
echo "      LUN mode 660"| tee -a add_info_here
echo "Access granted"| tee -a add_info_here
echo "" | tee -a add_info_here

done