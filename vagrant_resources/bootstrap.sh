#!/bin/bash

# yum update -y

# Install require packages for Ansible
wget https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -Uvh epel-release-6-8.noarch.rpm
yum install -y ansible

# Copy config files
mkdir -p /home/vagrant/.ssh
cp /vagrant/ansible_resources/ansible.cfg /home/vagrant/ansible.cfg
cp /vagrant/ansible_resources/hosts /home/vagrant/hosts
chmod -x /home/vagrant/hosts
cp /vagrant/ansible_resources/playbook.yml /home/vagrant/playbook.yml
cp /vagrant/ansible_resources/hello.php /home/vagrant/hello.php
cp /vagrant/ansible_resources/config /home/vagrant/.ssh/config
chown vagrant /home/vagrant/.ssh/config
chmod 600 /home/vagrant/.ssh/config

# Initialize ansible
# ssh-keygen -t rsa
# ssh-copy-id web
# ssh-copy-id db
# ansible-playbook playbook.yml

echo 'complete provisioning!'
