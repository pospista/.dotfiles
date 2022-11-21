This repository contains my bin (cleanup.sh and linux.sh scripts), etc (bashrc_custom and linux.sh) scripts, a Makefile, and .gitignore. 

The .gitignore file tells git to ignore the files and directories of .DS_STORE and linuxsetup.log to ensure they are not pushed to Github. 

Creating aliases: 
To create custom aliases, I crated a ./etc/bashrc_custom file. Aliases for the cd and ls command were included. Additionally, functions to tar -zcvf a directoryy and to -tar xvf a tar.gz file were included and given aliases. Additional aliases were created to remote into the cselab and to move an item to the trash directory and to remove the trash directory.

Editing vimrc file: 
The ./etc/vimrc file includes information setting configurations. As of now, the file contains the following configurations: syntax on, set number, set autoindent, set ruler, color elflord, autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0.

Current features included in the ./bin/linux.sh script: 
- Checks if operating system is Linux dumping an error if this is not the case 
- Creates the .TRASH directory in the home directory 
- Changes the name of .vimrc to .bup_vimrc if it exists 
- Redirects the contents of etc/vimrc to the .vimrc file in the home directory 
- Adds source ~/.dotfiles/etc/bashrc_custom to end of .bashrc file in home directory 
To execute, run the make linux command.

Cleaning: 
Current features included in the ./bin/cleanup.sh script: 
- Removes .vimrc file in home directory 
- Removes source ~/.dotfiles/etc/bashrc_custom from the end of the .bashrc file in the home directory
- Removes .TRASH directory in the home directory
To clean up, execute the script using the make clean command. 

Makefile: 
The makefile executes the ./bin/linux.sh script in the linux target and the ./bin/cleanup.sh script in the clean target. Enter the command make <target> to run either recipe. The linux target has a prerequisite of the clean target. 
