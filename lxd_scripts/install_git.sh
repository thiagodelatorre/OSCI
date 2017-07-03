#!/bin/bash

sudo apt-get -y install git git-core

mkdir ~ubuntu/git
cd ~ubuntu/git
git init --bare repo.git
cd -
