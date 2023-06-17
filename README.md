# README

## Make base fs for the runc container

```bash
make base-image # build the base image
make base-fs
```

## Compile our own version of runc

```bash
git clone -b add-fork-command https://ipads.se.sjtu.edu.cn:1312/xcontainer/runc.git
cd runc
make static
export RUNC=${PWD}/runc
```
