#!/bin/sh

cd /docker-ci-demo
git pull origin master

puppet apply httpd.pp

sleep 1

rake spec

