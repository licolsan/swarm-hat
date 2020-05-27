#!/bin/sh

if test -f ~/vm_box/ubuntu-xenial64.box; then
  echo "file existed"
else
  mkdir -p ~/vm_box
	wget https://vagrantcloud.com/ubuntu/boxes/xenial64/versions/20200514.0.0/providers/virtualbox.box -O ~/vm_box/ubuntu-xenial64.box
fi
