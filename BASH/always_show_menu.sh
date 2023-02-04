 #!/bin/bash
 while true
 do
 PS3='Please enter your choice: '
 options=("Option 1" "Option 2" "Option 3" "Quit")
 select opt in "${options[@]}" 
 do
     case $opt in
         "Option 1")
             echo "you chose choice 1"
             break
             ;;
         "Option 2")
             echo "you chose choice 2"
             break
             ;;
         "Option 3")
             echo "you chose choice 3"
             break
             ;;
         "Quit")
             echo "Thank You..."                 
             exit
             ;;
         *) echo invalid option;;
     esac
 done
 done