#!/bin/sh

cd /docker-ci-demo
# git pull origin master

echo
echo "********** Running puppet apply ... **********"
echo
puppet apply httpd.pp --color=html

echo
echo "********** Running serverspec ... **********"
echo 
rake spec SPEC_OPTS="--colour --format html"

