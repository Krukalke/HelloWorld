#!/bin/bash

echo "Hello, this script will help you with copy your input file."
echo ""
echo "List of available files: "

search_dir=/mnt/c/Scripts
for anyfile in "$search_dir"/*
do
  echo "$anyfile"
done

echo ""
echo "Please choose one file from the above list (copy path as input)"

echo -n "Your filepath: "
read -r filepath
echo "File which you choosen: 
$filepath"
echo ""
echo "Adding backup and timestamp to copied file."
cp -a $filepath "${filepath}_backup_$(date +%F_%R)"
echo "Copied file new name is '${filepath}_backup_$(date +%F_%R)'"

