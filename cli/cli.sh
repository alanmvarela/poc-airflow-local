#!/usr/bin/env bash
set -e
export CLI_WORKDIR=$(cd ../$(dirname $0) && pwd)
. "$CLI_WORKDIR/cli/utils/common.sh"

cli_help() {
  cli_name=${0##*/}
  echo "
$cli_name
Custom CLI
Usage: $cli_name [command]
Commands:
  startdb    Start Postgre and Redis containers
  stopdb     Stop Postgre and Redis containers
  startdev   Start Airflow dev environment including Postgre and Redis containers
  cleanup    Remove all Airflow local images and volumes
  *           Help
"
  exit 1
}

# cli_log "Exporting config ..."
# export $(cat "$CLI_WORKDIR/config" | xargs)

case "$1" in
  startdb)
    "$CLI_WORKDIR/cli/commands/startdb.sh" "$2" | tee -ia "$CLI_WORKDIR/cli/logs/startdb_${2}.log"
    ;;
  stopdb)
    "$CLI_WORKDIR/cli/commands/stopdb.sh" "$2" | tee -ia "$CLI_WORKDIR/cli/logs/stopdb_${2}.log"
    ;;
  startdev|s)
    "$CLI_WORKDIR/cli/commands/startdev.sh" "$2" | tee -ia "$CLI_WORKDIR/cli/logs/startdev_${2}.log"
    ;;
  cleanup|c)
    "$CLI_WORKDIR/cli/commands/cleanup.sh" "$2" | tee -ia "$CLI_WORKDIR/cli/logs/cleanup_${2}.log"
    ;;
  *)
    cli_help
    ;;
esac