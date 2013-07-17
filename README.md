# Puppet + Docker + serverspec CI example

## Build Docker VM for CI

```
$ git clone git@github.com:mizzy/docker-ci-demo.git
$ cd docker-ci-demo
$ docker build -t mizzy/docker-ci-demo .
```

## Run tests

```
$ docker run -t mizzy/docker-ci-demo 
```

Run this command from Jenkins or other CI tools for CI.

