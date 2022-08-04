#!/bin/bash
#var for counting total amount of file
file_num=0
#var for counting executable file(file with sh at the end)
shfile_num=0
#For loop for counting all the files
for file in  $(ls sh_file) 
do
#add 1 for each file in the dir
file_num=$(($file_num +1))
done
#For loop for counting file with sh only
#ls sh_file/*sh lists only the files with sh
for shfile in $(ls sh_file/*sh)
do
#add 1 for each file with sh
shfile_num=$(($shfile_num +1))
done
#print total files and executable files
echo "Total file:$file_num"
echo "$shfile_num now is or already executable"

