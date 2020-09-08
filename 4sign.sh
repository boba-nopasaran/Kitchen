#!/bin/bash

curdir=$(dirname $0)
echo "curdir:$curdir"

apks=$(find . -name "*.apk"|grep -v FwkPlugin)

for apk in $apks; do
 signer=$`java -jar $curdir/apksigner verify --print-certs $apk 2>/dev/null`
 ok=$?
 signer=$(echo $signer|grep -o ForFun)
 if [[ "$signer" ]] || [[ $ok == 1 ]]; then
  echo $apk $signer $ok
  java -jar "$curdir/signapk.jar" "$curdir/testkey.x509.pem" "$curdir/testkey.pk8" "${apk}" "${apk}_signed"
  $curdir/zipalign -f 4 "${apk}_signed" "${apk}"
  rm "${apk}_signed"
 fi
done
