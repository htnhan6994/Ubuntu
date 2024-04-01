#!/bin/bash

cd snort3
# Run command ansible-playbook to install snort3
ansible-playbook install.yml -K -i inventory
