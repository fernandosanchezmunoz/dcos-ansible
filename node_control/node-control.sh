#!/usr/bin/env bash
set -e

subcommand="$1"

if [ -z "$subcommand" ]; then
    errecho "No sub-command specified."
    exit 1
fi

source common.sh
bash node-control-${subcommand}.sh "${@:2}"