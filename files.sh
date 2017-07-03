#!/bin/sh

for i in lxd_scripts/*.sh ; do lxc file push $i OSCI/tmp/ ; done
lxc exec OSCI -- mkdir -p /etc/nginx/sites-available/
lxc file push nginx/git OSCI/etc/nginx/sites-available/

lxc file push selenium/* OSCI/tmp/
