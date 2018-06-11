#!/usr/bin/env bash

. `dirname $0`/demo.conf

PUSHD ${WORK_DIR}

  echo
  echo -n "Installing EAP ............... " 
  unzip -q ${BIN_DIR}/jboss-eap-${VER_DIST_EAP}.zip
  IS_OK

  echo -n "Setting admin password ....... "
  ${JBOSS_HOME}/bin/add-user.sh -p "${ADMIN_PASS}" -u "${ADMIN_USER}" --silent
  IS_OK

  if [ "x${VER_PATCH_EAP}" != "x" ]
  then
      echo -n "Applying patch ............... "
      $JBOSS_HOME/bin/jboss-cli.sh --command="patch apply --override-all ${BIN_DIR}/jboss-eap-${VER_PATCH_EAP}-patch.zip" &> /dev/null
      IS_OK
  fi

  echo -n "Enabling Elytron subsystem ... "
  $JBOSS_HOME/bin/jboss-cli.sh --file=$JBOSS_HOME/docs/examples/enable-elytron.cli &> /dev/null
  IS_OK

  echo -n "Unzipping quickstarts ........ "
  unzip -qo ${BIN_DIR}/jboss-eap-${VER_DIST_EAP}-quickstarts.zip
  IS_OK

  echo
POPD
