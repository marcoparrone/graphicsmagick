# graphicsmagick

A docker container containing GraphicsMagick.

See http://www.graphicsmagick.org for more informations about GraphicsMagick.

This is a convenient way of using GraphicsMagick without installing it and all of its dependencies.

## Prerequisites

podman or docker are needed.

I tested these scripts on CentOS Stream release 8 with podman.

If you use docker, replace docker=podman with docker=docker in the Makefile.

## Installation

git clone git@github.com:marcoparrone/graphicsmagick.git

cd graphicsmagick

make build

## Usage

Add in your ~/.bash_aliases or in your ~/.bashrc:

```sh
alias gm='podman run --rm -it -v .:/root -w /root marcoparrone/graphicsmagick gm'
```

then, after reloading the file, run the gm command, for example:

```sh
gm convert reminder.png -resize 128x128 reminder-128.png
```
