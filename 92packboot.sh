#!/bin/bash

curdir=$(dirname $0)

ls origin/boot.img origin/recovery.img

read imagename

$curdir/mkboot proj/$imagename.tmp out/$imagename