#!/bin/bash
[ ! $EUID -eq 0 ] && echo "This operation requires root permissions." && exit 1

truncate --size=15M fs.img 
mkfs.ext2 -F fs.img
chmod ga+w fs.img
mkdir image
