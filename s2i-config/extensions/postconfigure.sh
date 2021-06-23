#!/usr/bin/env bash

set -x

ENV_DIR=/etc/eap-environment
cd $HOME
curl -o postgresql-42.2.22.jar https://jdbc.postgresql.org/download/postgresql-42.2.22.jar

# Run EAP modifications CLI script
$JBOSS_HOME/bin/jboss-cli.sh --file=$ENV_DIR/configure.cli

set +x


