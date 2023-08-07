#!/usr/bin/env bash
set -e
. "$CLI_WORKDIR/cli/utils/common.sh"

cli_log "Start Postgre and Redis containers"

cd "$CLI_WORKDIR/airflow" || exit 1

docker compose up airflow-init

cli_log "Postgre and Redis started"