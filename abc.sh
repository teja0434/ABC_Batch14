#!/bash/bin
#Author: bhanu
#Description: Task1

echo " display the files from Oldest to Latest"

ls -lrth



echo "create a new file"


touch file6.txt


 ls -lrt file6.txt

echo "Creating directory with  all permissions"



mkdir scripts | chmod 777 scripts

echo "display the permissions of the file created"

ls -lrt /scripts
