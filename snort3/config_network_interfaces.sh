#!/bin/bash

# Set the network interface ens33 to promiscuous mode
ip link set dev ens33 promisc on

# Check receive-offload settings using ethtool
ethtool -k ens33 | grep receive-offload

# Create content for the snort3-nic.service file
content="[Unit]\nDescription=Set Snort 3 NIC in promiscuous mode and Disable GRO, LRO on boot\nAfter=network.target\n\n[Service]\nType=oneshot\nExecStart=/usr/sbin/ip link set dev ens33 promisc on\nExecStart=/usr/sbin/ethtool -K ens33 gro off lro off\nTimeoutStartSec=0\nRemainAfterExit=yes\n\n[Install]\nWantedBy=default.target"

# Write content to the snort3-nic.service file
echo -e "$content" | sudo tee /etc/systemd/system/snort3-nic.service >/dev/null

# Reload systemd to apply the changes
systemctl daemon-reload

# Enable and start the snort3-nic service
systemctl enable --now snort3-nic.service

# Check the status of the snort3-nic service
systemctl status snort3-nic.service

