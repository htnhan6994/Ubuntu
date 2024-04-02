#!/bin/bash

cd snort3
# Run command ansible-playbook to install snort3
ansible-playbook install.yml -K -i inventory
ansible-playbook config_network_interfaces.yml -K -i inventory
ansible-playbook pulledpork3_install.yml -K -i inventory