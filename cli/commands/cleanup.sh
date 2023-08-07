#!/usr/bin/env bash
set -e
. "$CLI_WORKDIR/cli/utils/common.sh"


cli_log "Removing all airflow local images and volumes"

cd "$CLI_WORKDIR/airflow" || exit 1

docker stop poc-airflow-local-postgres-1 poc-airflow-local-redis-1

docker rm poc-airflow-local-postgres-1 poc-airflow-local-redis-1 

docker compose down --volumes --rmi all

cli_log "All airflow local images and volumes removed"
