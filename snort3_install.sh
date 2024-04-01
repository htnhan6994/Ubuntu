#!/bin/bash

cd snort3
# Chạy lệnh ansible-playbook
ansible-playbook install_snort3.yml -K -i inventory
