#!/bin/sh
[ ! $EUID -eq 0 ] && echo "This operation requires root permissions." && exit 1
mount -t ext2 fs.img image
