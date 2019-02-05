#!/bin/bash
set -e

if [[ -z $KONTENA_URL ]]; then
    echo "Please set KONTENA_URL."
    exit 1
elif [[ -z $KONTENA_TOKEN ]]; then
    echo "Please set KONTENA_TOKEN."
    exit 1
    # OPTIONAL option
elif [[ -z $PLUGIN_KONTENA_FILE ]]; then
    echo "Please set KONTENA_FILE. Otherwise kontena.yml (default) will be set."
    $PLUGIN_KONTENA_FILE='kontena.yml'
elif [[ -z $KONTENA_GRID ]]; then
    echo "Please set KONTENA_GRID."
    exit 1
elif [[ -z $PLUGIN_KONTENA_STACK ]]; then
    echo "Please set KONTENA_STACK."
    exit 1
fi

kontena stack install --name $PLUGIN_KONTENA_STACK $PLUGIN_KONTENA_FILE || \
    kontena stack upgrade $PLUGIN_KONTENA_STACK $PLUGIN_KONTENA_FILE
