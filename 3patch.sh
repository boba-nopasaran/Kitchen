#!/bin/bash

pushd backup

mkdir data_cust
mv data_cust.tgz data_cust/
cd data_cust
tar -xf data_cust.tgz
rm data_cust.tgz

sqlite3 data/com.android.providers.settings/databases/settings.db "update system set value=1 where name like '%volume%'"
sqlite3 data/com.android.providers.settings/databases/settings.db "insert into system (name, value) values ('screen_brightness', 1)"

rm -rfd data/com.chartcross.gpstestplus
rm -rfd data/com.iflytek.inputmethod

popd



cp -vrp "$(dirname $0)/patch/fs/"* .



find "$(dirname $0)/patch/patches/" -type f -name '*.patch' -print0 | sort -z | xargs -t -n 1 -0 patch -p0 --no-backup-if-mismatch -r - -i

date=$(date +%Y.%m.%d)
sed -i "s/ro.product.fw_ver=2.1.50/ro.product.fw_ver=2.1.50-nopasaran-${date}/g" build.prop


pushd backup

cd data_cust
tar -caf data_cust.tgz *
mv data_cust.tgz ..
cd ..
rm -rfd data_cust

popd