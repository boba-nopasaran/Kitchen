#!/bin/bash

export LANG=C
curdir=$(dirname $0)

find origin/ -maxdepth 1 -regex '.*\(.img\|.ext4\)' -type f -exec ls {} \;
read imagename

mkdir proj/$imagename.mnt
sudo umount proj/$imagename.raw
rm proj/$imagename.raw

if [ `head -c 2 origin/$imagename | grep -aobP -m1 '\x3A\xFF'` ]; then

    $curdir/simg2img origin/$imagename proj/$imagename.raw

else
    echo not implement
    exit
fi

sudo mount -o loop proj/$imagename.raw proj/$imagename.mnt
