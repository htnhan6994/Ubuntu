#!/bin/bash

# Clone PulledPork3 repository
cd ~/snort_src/ || exit
git clone https://github.com/shirkdog/pulledpork3.git

# Navigate to PulledPork3 directory
cd ~/snort_src/pulledpork3 || exit

# Create directory for PulledPork3 executable
sudo mkdir -p /usr/local/bin/pulledpork3

# Copy pulledpork.py to /usr/local/bin/pulledpork3
sudo cp pulledpork.py /usr/local/bin/pulledpork3

# Copy lib directory to /usr/local/bin/pulledpork3
sudo cp -r lib/ /usr/local/bin/pulledpork3

# Set execute permissions for pulledpork.py
sudo chmod +x /usr/local/bin/pulledpork3/pulledpork.py

# Create directory for PulledPork3 configuration
sudo mkdir -p /usr/local/etc/pulledpork3

# Copy pulledpork.conf to /usr/local/etc/pulledpork3
sudo cp etc/pulledpork.conf /usr/local/etc/pulledpork3/

# Run PulledPork3 to display version
/usr/local/bin/pulledpork3/pulledpork.py -V

