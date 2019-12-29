#!/bin/bash
echo "\n\ninstall Ansible"
sudo apt-get install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible -y

echo "Put Ansible Vault Key In Place"
mkdir /home/atjulian/wsl/
cp /mnt/c/users/Adam/Repositories/wsl/ansible-key /home/atjulian/wsl/ansible-key
sudo chmod 0644 /home/atjulian/wsl/ansible-key
echo "Run Ansible Playbooks"
sudo ansible-playbook setup.yml --vault-password-file=/home/atjulian/wsl/ansible-key
