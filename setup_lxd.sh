#!/bin/bash

# Install LXD
sudo apt install lxd -y

useradd -G lxd ubuntu
newgrp lxd

# Initialize LXD
echo "Use all the default options"
lxd init

# Create LXD container
lxc launch ubuntu:17.04 ubuntu-zesty

lxc stop ubuntu-zesty
