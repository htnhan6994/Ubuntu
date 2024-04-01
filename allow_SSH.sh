#!/bin/bash

# Install UFW
apt install ufw -y

# Allow SSH through UFW
ufw allow ssh

# Enable UFW
ufw enable

# Check UFW status
ufw status

# Install OpenSSH Server
apt install openssh-server -y

# Start SSH service
systemctl start ssh

# Enable SSH service on boot
systemctl enable ssh

# Check SSH service status
systemctl status ssh
