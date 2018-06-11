#!/usr/bin/env bash

. `dirname $0`/demo.conf

echo
echo -n "Cleaning up install ... "
rm -fr ${WORK_DIR}/jboss-eap-${VER_INST_EAP} ${WORK_DIR}/jboss-eap-*-quickstarts
IS_OK

echo "Done."
echo

