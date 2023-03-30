# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash


My repository has many scripts and a Makefile. My Makefile runs the Linux target which runs my clean target first beacuse it is a dependancy. My clean target contains my clean.sh script this makes sure that everything is clean and ready to go before the linux target runs so it unodes everything that the linux target does incase it was done previously. This script removes the .vimrc file, removes the line "source ~/.dotfiles/bashrc-custom" in the .bashrc file due to the sed command. It also removes the .TRASH dir if it is in my home directory. Then the Linux target runs. This runs the linux.sh script which makes sure that the system is Linux and if not it sends and error message to the linuxsetup.log file and exits. If it is Linux it then creates a .TRASH dir in my ~dir if it doesnt exist and then changes the .vimrc file in my ~/ dir to .bup-vimrc and pushes a messgae to linuxsetup.log that the filename was changed. It then redirects all contents of the etc/vimrc file to the .vimrc file within my ~/ dir lastly it adds the statement "source ~/.dotfiles/etc/bashrc-custom" to the end of .bashrc in my ~/ dir. My .vimrc and .bashrc-custom files have congigs for Aliases such as cdd = "cd .." and the .vimrcm was for things such as color and syntax.
