#!/bin/bash
# Check if operating system is linux
SYSTEM_TYPE=$(uname)
if [[ "$SYSTEM_TYPE" == "Linux" ]]
then 
	mkdir -p ~/.TRASH # creates trash directory in home directory if it does not already exist
	if test -f "~/.vimrc"; then # if the .vimrc file exists in your home directory  
		mv ~/.vimrc ~/.bup_vimrc # renames .vimrc file to .bup_vimrc
		echo "The current .vimrc file was changed to .bup_vimrc" >>  linuxsetup.log # prints message to linuxsetup.log file 
	fi
	cat etc/vimrc > ~/.vimrc # redirects contents of etc_vimrc to .vimrc in home directory
	echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc # adds statement to end of .bashrc file in the home directory
else # if the operating system is not linux
	echo "Error: the operating system type is not Linux" >> linuxsetup.log # puts error message in linuxsetup.log file
	exit 0 # exit 
fi 

