#!/bin/bash

curdir=$(dirname $0)

ls origin/boot.img origin/recovery.img

read imagename

$curdir/mkboot origin/$imagename proj/$imagename.tmp
