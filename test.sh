#!/bin/sh

cd /docker-ci-demo
git pull origin master
rake spec

