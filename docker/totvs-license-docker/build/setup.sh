#!/usr/bin/env bash
set -e
set -x

TOTVS_PATH=/totvs12

# mkdir -p $TOTVS_PATH

cd $TOTVS_PATH/bin/appserver/

echo $TOTVS_PATH/"protheus/bin/appserver/" > /etc/ld.so.conf.d/appserver64-libs.conf
/sbin/ldconfig

cp /build/my-init.sh /usr/local/bin/my-init.sh
cp /build/appserver.ini $TOTVS_PATH/bin/appserver/

rm -rf /build
