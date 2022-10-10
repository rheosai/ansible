#!/usr/bin/bash
cp .bashrc ~/.bashrc

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


