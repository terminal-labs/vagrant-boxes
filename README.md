# README - Vagrant Boxes

[![Join the chat at https://gitter.im/terminal-labs/rambo](https://badges.gitter.im/terminal-labs/rambo.svg)](https://gitter.im/terminal-labs/rambo?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

The boxes are hosted at https://app.vagrantup.com/terminal-labs

See the documentation in the `docs/` directory for information about the individual box classes.

It is recommended to have 400GB of hard drive space to create *ALL* of the box variations in this repository.

This package also assumes you are running a *nix system with a amd64 architecture, and have VirtualBox and Vagrant installed. If you have a different architecture you will need to download your appropriate Packer version manually. If you are on a different system without Bash, this all probabaly not work.


Install this by cloning the repo and running `pip install -e .` inside it. See `vagrant-boxes -h` for a list of commands.
