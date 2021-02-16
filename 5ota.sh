#!/bin/bash

curdir=$(dirname $0)
echo "curdir:$curdir"

name=$(cat name)
date=$(date +%Y.%m.%d)


pushd ota


zip -r "../ota.zip" .

java -jar "$curdir/MinSignApk.jar" "../ota.zip" "../${name}-nopasaran-${date}-ota.zip"

rm "../ota.zip"

popd
