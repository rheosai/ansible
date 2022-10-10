#!/usr/bin/bash
cp .bashrc ~/.bashrc
source ~/.bashrc

sudo apt-get update -y
sudo apt-get upgrade -y 
sudo apt install gpg -y

mkdir ~/.aws
cp awscreds ~/.aws/credentials
cp awsconfig ~/.aws/config
chmod 750 ~/.aws
chmod 600 ~/.aws/credentials
chmod 600 ~/.aws/config

mkdir ~/.ssh
chmod 700 ~/.ssh
cp sshconfig ~/.ssh/config
chmod 600 ~/.ssh/config

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bash_profile
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.profile

echo "-------- Installing Ansible  ---------"
brew install terraform 
brew install vault
brew install ansible

terraform version
ansible --version
vault version



echo "--------  ALL DONE ---------"



