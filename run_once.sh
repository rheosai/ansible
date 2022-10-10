#!/usr/bin/bash
cp .bashrc ~/.bashrc
source ~/.bashrc

sudo apt-get update -y
sudo apt-get upgrade -y 

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


echo "-------- Installing Homebrew  ---------"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bash_profile
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.profile
echo "-------- Installing Git  ---------"
brew install git
echo "-------- Installing Terraform  ---------"
brew install terraform
echo "-------- Installing Ansible  ---------"
brew install ansible
echo "-------- Installing Vault  ---------"
brew install vault




echo "--------  ALL DONE ---------"



