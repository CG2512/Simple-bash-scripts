#!/bin/bash
#Ask user for script name
echo "Name for scripts"
read name
#Saving script name to a var
script_name="${name}.sh"
#Checking if there's a file with the same name already in the dir
#by looping through everything
for file_name in $(ls)
do
#if script name is the same as a file in the dir,exit program

if [[ $script_name == $file_name ]]
then
echo "$file_name is already in here!";
exit 1;
fi
done

#insert #!/bin/bash into script
echo "#!/bin/bash" >>${script_name}
#checking if script has #!/bin/bash
#save first line by putting into a var
first_line=$(head -1 $script_name)
#check if first line is #!/bin/bash
if [[ $first_line == "#!/bin/bash" ]]
then
echo "#!/bin/bash written successfully";
fi

#changing permission for file to be executable
chmod u+x ${script_name}

#check if file is exectuable
#if not,announce file is unusable and exit
if [[ ! -x $script_name ]]
then
echo "File is not executable";
exit 1;
fi
  
#open nano if nothing goes wrong
nano ${script_name}
