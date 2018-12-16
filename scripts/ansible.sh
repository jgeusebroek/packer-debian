#!/bin/bash -eux

# Add PPA
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" > /etc/apt/sources.list.d/ansible.list

# Required by Debian 9; otherwise apt-key will fail.
apt-get -y install dirmngr

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367

# Install Ansible dependencies.
apt-get -y update
apt-get -y install ansible git