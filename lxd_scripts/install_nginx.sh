#!/bin/bash

# Thanks to:
# https://superuser.com/questions/719949/centos-5-nginx-git-http-backend
# 

sudo apt-get -y install nginx git fcgiwrap apache2-utils

#sudo echo "fastcgi_param REMOTE_USER $remote_user;" >> /etc/nginx/fastcgi_params

sudo ln -s /etc/nginx/sites-available/git /etc/nginx/sites-enabled/git

sudo chmod -R g+ws /home/ubuntu/git
sudo chgrp -R www-data /home/ubuntu/git
mkdir /home/ubuntu/nginx
chgrp www-data /home/ubuntu/nginx
sudo chgrp www-data /var/run/fcgiwrap.socket

sudo htpasswd -c /etc/nginx/passwd ubuntu

sudo service nginx restart
