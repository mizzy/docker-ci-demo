#!/bin/sh

cd /docker-ci-demo
# git pull origin master

echo "********** Running puppet apply ... **********"
echo
puppet apply httpd.pp --color=false

echo "********** Running serverspec ... **********"
echo 
rake spec

