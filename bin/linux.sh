#!/bin/bash
L=$(uname)
if [ $L != "Linux" ] #if linux is the system then it continues
then
  echo "Error not Linux System" >> linuxsetup.log #if linux is not the system then it outputs error to file and exits
  exit
else

	mkdir -p ~/.TRASH #Creates trash dir if it doesnt already exist

	if [ -f ./vimrc ]
	then
		mv ~/.vimrc ~/.bup_vimrc
	fi

	echo ".vimrc changed to .bup_vimrc" >> ~/.dotfiles/bin/linuxsetup.log #echos statement into the linux file if .vimrc was changed

	~/.dotfiles/etc/vimrc > ~/.vimrc #moves the contents of the vimrc file to a .vimrc file in your jhome

	echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc #adds this statement to the bottom of the .bashrc file

fi

