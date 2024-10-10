#!/usr/bin/env bash

cd ~
source ~/.nvm/nvm.sh
whoami
pwd

#set -x

nvm --version
node --version

# mkdir -p /data/db
# mkdir -p /data/storage

# unzip
unzip /app/ohpm-repo-5.0.7.0.zip -d ~/soft > 1.log
cd ~/soft

# override config
cp /app/config.yaml ~/soft/conf/config.yaml

# install & start
./bin/ohpm-repo install
export OHPM_REPO_DEPLOY_ROOT=~/ohpm-repo
./bin/ohpm-repo start

sleep 100