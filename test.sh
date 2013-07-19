#!/bin/sh

cd /docker-ci-demo
# git pull origin master

puppet apply httpd.pp --color=false

rake spec

