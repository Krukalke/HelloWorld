#!/bin/bash
#Space for functions:
#1
function duplicates {
for lun_id in $(cat lun_information)
    do
    echo "Found duplicates:"
        grep -o $(echo "$lun_id" | tr [:upper:] [:lower:]) add_info_here
    echo " "
done

echo -e "DUPLICATES FOUND!!! \nPLEASE CHECK YOUR INPUT FILE! :) \n"
}

#2
function backup {
echo -e "\nList of available files: "
search_dir=/mnt/c/Scripts

for anyfile in "$search_dir"/*
    do
    echo "$anyfile"
done

echo -e "\nPlease choose one file from the above list (copy path as input)"
echo -n "Your filepath: "
read -r filepath
echo "File which you choosen: 
$filepath"
echo -e "\nAdding backup and timestamp to copied file."
cp -a $filepath "${filepath}_backup_$(date +%F_%R)"
echo -e "Copied file new name is '${filepath}_backup_$(date +%F_%R)'\n"
}

#3
function append {
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
    echo ""
done
}
#Functions part end here ;)

#Here multichoise is starting
while true
do
PS3='Choose what you want to do: '
choose=("Create backup" "Check duplicates" "Add config" "Quit")
select option in "${choose[@]}"; do
    case $option in
        "Create backup")
            echo -e "\nProcessing with script which will create backup for you"
            backup
            break
            ;;
        "Check duplicates")
            echo -e "\nProcessing with script which will check duplicates for you"
            duplicates
            break
            ;;
        "Add config")
            echo -e "\nProcessing with script which will add config to the file"
            append
            break
            ;;
	"Quit")
	    echo "User requested exit"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done
done