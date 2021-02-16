#!/bin/bash

name=$(cat name)
date=$(date +%Y.%m.%d)

zip -j "${name}-nopasaran-${date}.zip" out/*

#zip -j -0 "${name}-nopasaran-${date}-update.zip" out/MT6735_Android_scatter.txt out/system.img

