ls -lah
echo 'PS1="\u@\H[\[$(tput sgr0)\]\[\033[38;5;1m\]\w\[$(tput sgr0)\]]\n\\$ \[$(tput sgr0)\]"' > .bashrc && source .bashrc
clear
ls -lah
exit
