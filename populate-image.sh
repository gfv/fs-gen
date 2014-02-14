#!/bin/bash
. scripts/populator

if [ ! -d image ]
then
        echo "no mountpoint, cannot populate :("
        exit 1
fi

cd image

# basic directory structure
mkdir lib64
mkdir sbin
mkdir bin
mkdir etc

ln -s lib64 lib

attach_binary /bin/bash
attach_binary /bin/echo
attach_binary /bin/hostname
attach_binary /bin/false
attach_binary /home/gfv/Persistent/initd-build/init/init /bin/init
cp /home/gfv/Persistent/initd/demo.conf etc/initd.conf

