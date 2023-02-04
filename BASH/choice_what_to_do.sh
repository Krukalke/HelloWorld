#!/bin/bash

PS3='Choose what you want to do: '
choose=("Create backup" "Check duplicates" "Add config" "Quit")
select option in "${choose[@]}"; do
    case $option in
        "Create backup")
            echo "Processing with script which will create backup for you"
	    # optionally call a function or run some code here
            ;;
        "Check duplicates")
            echo "Processing with script which will check duplicates for you"

	    # optionally call a function or run some code here
            ;;
        "Add config")
            echo "Processing with script which will add config to the file"
	    # optionally call a function or run some code here
            ;;
	"Quit")
	    echo -e "\nUser requested exit"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done