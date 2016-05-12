#!/usr/bin/bash

yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel -y

yum install gcc perl-ExtUtils-MakeMaker -y

yum remove git # This is important!

cd /usr/local/src

# find the latest version of git at: https://github.com/git/git/releases
# current it is version 2.8.2
 wget https://github.com/git/git/archive/v2.8.2.tar.gz

 tar -zxvf v2.8.2.tar.gz

 cd ./git-2.8.2

mkdir -p /opt/git

make prefix=/opt/git all 
make prefix=/opt/git install

echo "export PATH=$PATH:/opt/git/bin" >> /etc/bashrc

source /etc/bashrc

# check git version

git version

# If you have multiple git remote repositories, you don't need to config the following
git config --global user.name "Your Name"
git config --global user.email "you@example.com"

# push and pull via ssh using ssh key

ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# for git, the name of the rsa file must one of the four

# id_dsa.pub
# id_ecdsa.pub
# id_ed25519.pub
# id_rsa.pub

# ssh pub key file location is: 
# /Users/you/.ssh/id_rsa.pub

# if you create as a root, it will be:

# /root/.ssh/id_rsa.pub
