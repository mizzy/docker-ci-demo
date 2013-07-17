# Build Docker VM for CI

```
$ git clone git@github.com:mizzy/docker-ci-demo.git
$ cd docker-ci-demo
$ docker build -t mizzy/docker-ci-demo .
```

# Run tests

```
$ docker run -i -t mizzy/serverspec /docker-ci-demo/test.sh
```
