#!/bin/bash

# 해당 스크립트를 실행시 $ source node_install.sh

# apt update
sudo apt update

# nodejs install
echo 'install node'
sudo apt install -y nodejs

# download nvm
echo 'download nvm'
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# nvm의 새 인스턴스를 로드하기 위해 .bashrc를 source
source ~/.bashrc

# install nvm version 20.10.0 (node version이라고 가정)
echo 'install nvm 20.10.0'
nvm install 20.10.0

# set default node version to 20.10.0
echo 'set nvm default version to 20.10.0'
nvm alias default 20.10.0

echo 'finish'
exit 0

