#!/bin/bash

# Set timezone
timedatectl set-timezone Asia/Bangkok

# Install open-vm-tools and open-vm-tools-desktop
apt-get install open-vm-tools open-vm-tools-desktop -y

# Update package lists and upgrade packages
apt-get update && apt-get dist-upgrade -y

# Update and upgrade again (sometimes required)
apt update -y && apt upgrade -y

# Install build-essential
apt install build-essential -y

# Install net-tools
apt install net-tools -y

# Install Ansible
apt install ansible -y

# Install snapd
apt install snapd -y

# Install git
apt install git -y

# Install vim
apt install vim -y
