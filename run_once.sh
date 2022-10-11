#!/usr/bin/bash
cp .bashrc ~/.bashrc
source ~/.bashrc

sudo apt-get update -y
sudo apt-get upgrade -y 
sudo apt-get install gpg sshpass -y

mkdir ~/.aws
tee ~/.aws/credentials <<EOF
[default]
aws_access_key_id = 
aws_secret_access_key = 
EOF

tee ~/.aws/config <<EOF
[default]
region = us-east-1
EOF

chmod 750 ~/.aws
chmod 600 ~/.aws/credentials
chmod 600 ~/.aws/config

mkdir ~/.ssh
chmod 700 ~/.ssh
tee ~/.ssh/config <<EOF
Host *
    StrictHostKeyChecking no
    UserKnownHostsFile=/dev/null
EOF


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
vault version
ansible --version



echo "--------  ALL DONE ---------"



