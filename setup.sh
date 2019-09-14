#!/bin/bash
sudo apt-get update
echo "\n\ninstall vim"
sudo apt-get install -y vim
echo "\n\ninstall tmux"
sudo apt-get install -y tmux
echo "\n\ninstall Ansible"
sudo apt-get install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
ansible-playbook ansible/setup-git.yml
