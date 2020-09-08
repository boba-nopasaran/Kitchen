#!/bin/bash

name=$(cat name)
date=$(date +%Y-%m-%d)

zip -j "${name}-nopasaran-${date}.zip" out/*

