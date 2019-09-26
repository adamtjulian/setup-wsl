#!/bin/bash
sudo apt-get update
echo "\n\ninstall Ansible"
sudo apt-get install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
echo "Run Ansible Playbooks"

echo "Put Ansible Vault Key In Place"
mkdir /home/atjulian/wsl/
cp /mnt/c/users/Adam/Repositories/wsl/ansible-key /home/atjulian/wsl/ansible-key
sudo chmod 0644 /home/atjulian/wsl/ansible-key

ansible-playbook ansible/setup-git.yml
ansible-playbook ansible/setup-tmux.yml
ansible-playbook ansible/setup-vim.yml
ansible-playbook ansible/setup-python.yml
