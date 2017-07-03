#!/bin/bash

sudo apt-get -y install git git-core

mkdir ~/git
cd ~/git
git init --bare repo.git
cd ..
