#!/bin/sh


#Create a bash script named adhoc-cmds.sh that will run few ad-hoc commands on your managed nodes.

#Installs python on nodeA.   
#Displays the uptime on all the managed nodes.  
#Create the file /tmp/hello.txt with the contents “Hello, Friend!” on nodeB.


#define adhoc_commands

adhoc_command_uptime="ansible all -m command -a 'uptime'"
adhoc_command_install_python="ansible test -m raw -a 'sudo apt-get install -y python'"
adhoc_command_file="ansible prod -m copy -a 'content=\"Hello, friend\" dest=/temp/hello.txt'"

#Run the adhoc_commands

echo "Displaying the uptime on all the managed nodes now..."
$adhoc_command_uptime

echo "Installing python program in the test server managed node..."
$adhoc_command_install_python

echo "Creating the hello.txt file in /tmp/hello.txt dir with content "Hello, friend" on prod server..."
$adhoc_command_file



