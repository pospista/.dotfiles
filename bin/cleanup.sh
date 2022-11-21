#!/bin/bash
SOURCE="source ~/.dotfiles/bashrc_custom"

rm -f  ~/.vimrc # removes .vimrc file located in the home directory 
sed -i 's|$SOURCE| |g' ~/.bashrc  # remove line from .bashrc file using sed command
rm -rf  ~/.TRASH # removes the trash directory in the home directory
