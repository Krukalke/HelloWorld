#!/bin/bash
echo "This script will help with clearing config file from duplicates"
#for lun_id in $(cat add_info_here)
#    do
#    echo "Found duplicates:"
#        grep -B4 $(echo "$lun_id" | tr [:upper:] [:lower:]) add_info_here
#    echo " "
#done

cat add_info_here
echo -e "DUPLICATES FOUND!!! \nPLEASE CHECK YOUR INPUT FILE! :) \n"

# works but not living the first occurance of lines
# awk '/32hsf92n74x7a31bv6/{n=4} n {n--;next}; 1' add_info_here

#Living first one but deleting only on line:
# awk '/32hsf92n74x7a31bv6/{if(p++)next} 1' add_info_here

#delete all occurances 
#sed '/[12lzncanaigfm23nsa]$/,+3d' add_info_here