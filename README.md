# Masterless Salt Base

With this repository users can quickly bootstrap a generic(ish) Ubuntu server. The end result is a host with basic troubleshooting and security tools pre-installed. One that is ready to host Docker containers.

## How it works

This repository uses [Effing Shell Scripts 2](https://github.com/madflojo/efs2)  to bootstrap new hosts. That bootstrapping process includes installing Salt in a "masterless" configuration. Salt is then used to install and maintain all other packages/configs.

## Getting Started

To get started first you must clone this repository and change to the new directory.

```sh
$ git clone https://github.com/madflojo/masterless-salt-base.git
$ cd masterless-salt-base
```

After changing to the created `masterless-salt-base` directory simply run the `efs2` command.

```sh
$ efs2 -v -u root host.example.com host2.example.com host3.example.com
```

`efs2` will login to the specified hosts and execute the contents within the `Efs2file`. Once complete, you have yourself a ready Docker host.
