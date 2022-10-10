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


echo "-------- Installing Ansible  ---------"
sudo apt-add-repository ppa:ansible/ansible
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update -y 
sudo apt install ansible terraform vault -y

terraform version
ansible --version
vault version



echo "--------  ALL DONE ---------"



