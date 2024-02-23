# Reproducibility
This is a repo that shows how to produce reproducible research.


# Setup Docker
```console
# build container
$ docker build -t reproduction/r .
# run
$ docker run --rm -it -v ${PWD}/code:/code reproduction/r
```