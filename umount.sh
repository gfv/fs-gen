#!/bin/sh
[ ! $EUID -eq 0 ] && echo "This operation requires root permissions." && exit 1
umount image
