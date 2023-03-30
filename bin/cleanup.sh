#!/bin/bash

rm -rf ~/.vimrc #removes the file from your home dir
sed -i 's| source ~/.dotfiles/bashrc_custom| |g' ~/.bashrc #removes the statement from the .bashrc dir
rm -rdf ~/.TRASH #removes .TRASH dir from home dir 
