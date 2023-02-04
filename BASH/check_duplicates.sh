#!/bin/bash

#Check if there is repeated LUN ID in you config file ;)

echo "This script will check for you if in config file you have any duplicates"
echo ""

# Checking duplicates in one line
for lun_id in $(cat lun_information)
    do
    echo "Found duplicates:"
        grep -o $(echo "$lun_id" | tr [:upper:] [:lower:]) add_info_here
    echo " "
done

echo "Please check your input file! :)"


#for lun_id in $(cat lun_information); do grep $(echo "$lun_id" | tr [:upper:] [:lower:]) add_info_here ; done