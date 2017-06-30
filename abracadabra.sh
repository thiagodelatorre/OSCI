#!/bin/bash

# install Git
git --version || sudo apt install git

# checkout git repo
git status || git clone https://github.com/thiagodelatorre/OSCI.git

cd OSCI && ./abracadabra.sh && exit 0

./setup_lxd.sh

lxc stop OSCI
lxc delete OSCI

lxc copy ubuntu-zesty OSCI
lxc start OSCI

# send scripts to lxd OSCI
for i in lxd_scripts/*.sh ; do lxc file push $i OSCI/tmp/
for i in lxd_scripts/*.sh ; do lxc exec OSCI -- OSCI/tmp/$i

# setup port forwarding
sudo iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 587 -j DNAT --to-destination 10.186.39.181
