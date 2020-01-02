# libvirt in docker
easy to install and start a vm in docker

## features
- persistent vm disk
- run on every linux

## installation
```sh
make install
```

## how to run?
```sh
make run
# wait until the ssh is ready (abt several seconds)

./ssh
# now you have your vm :)
```

## issues
- makefile is not yet completed to fetch a vm disk using Vagrant
