#!/bin/bash

# Using:
# https://intoli.com/blog/running-selenium-with-headless-chrome/
# https://christopher.su/2015/selenium-chromedriver-ubuntu/

cd /tmp/

#sudo apt-get install -y libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome*.deb
sudo apt-get install -f -y

#sudo apt-get install -y xvfb

sudo apt-get install -y unzip curl

VERSION=$(curl http://chromedriver.storage.googleapis.com/LATEST_RELEASE)

wget -N http://chromedriver.storage.googleapis.com/$VERSION/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
chmod +x chromedriver

sudo mv -f chromedriver /usr/local/share/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver

# Install pip:
sudo apt-get install -y python-pip

## (Optional) Create and enter a virtual environment:
# sudo apt-get install python-virtualenv
# virtualenv env
# source env/bin/activate

# Install Selenium and pyvirtualdisplay:
pip install ipython selenium
