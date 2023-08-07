#!/usr/bin/env bash
set -e
. "$CLI_WORKDIR/cli/utils/common.sh"


cli_log "Start Airflow local containers"

cd "$CLI_WORKDIR/airflow" || exit 1

docker compose up airflow-init

docker compose up

docker compose stop airflow-init

cli_log "Postgre and Redis containers stopped"