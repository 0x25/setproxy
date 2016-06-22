#!/bin/bash

# usage :
# . ./setProxy.sh
# the first '.' is very important !
# the parameter is for the current shell

echo 'set http_proxy configuration'
echo 'user:'
read user
echo 'password'
read -s password
echo 'proxy ip:'
read proxy
echo 'proxy port:'
read port
echo 'domain:'
read domain

http_proxy="http://${domain}\\${user}:${password}@${proxy}:${port}"

export http_proxy=$http_proxy
export https_proxy=$http_proxy
export no_proxy=localhost,127.0.0.1/8
