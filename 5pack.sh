#!/bin/bash

export LANG=C
curdir=$(dirname $0)

find origin/ -maxdepth 1 -regex '.*\(.img\|.ext4\)' -type f -exec ls {} \;
read imagename

sudo umount proj/$imagename.raw
rm out/$imagename

$curdir/ext2simg -v proj/$imagename.raw out/$imagename

rm proj/$imagename.raw