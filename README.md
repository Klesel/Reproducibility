# Reproducibility
This is a repo that shows how to produce reproducible research.


# Setup Docker
```console
# build container
docker build -t reproduction/r .


# Linux Shell / PowerShell
docker run --rm -it -v ${PWD}/code:/code reproduction/r

# Git Bash
docker run --rm -it -v /$(pwd)/code:/code reproduction/r

```