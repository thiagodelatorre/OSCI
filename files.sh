#!/bin/sh

for i in *.sh ; do lxc file push $i OSCI/tmp/ ; done
lxc file push nginx/git OSCI/etc/nginx/sites-available/
