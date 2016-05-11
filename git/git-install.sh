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

