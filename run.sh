#!/bin/sh
qemu-kvm -cpu host -drive file=fs.img,if=virtio -kernel kernel -append "root=/dev/vda console=ttyS0,9600" -m 32M -serial stdio
