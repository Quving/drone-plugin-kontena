#!/bin/bash
set -e

if [[ -z $PLUGIN_KONTENA_URL ]]; then
    echo "Please set KONTENA_URL."
    exit 1

elif [[ -z $PLUGIN_KONTENA_TOKEN ]]; then
    echo "Please set KONTENA_TOKEN."
    exit 1
    # OPTIONAL option

elif [[ -z $PLUGIN_KONTENA_FILE ]]; then
    echo "Please set KONTENA_FILE. Otherwise kontena.yml (default) will be set."
    export PLUGIN_KONTENA_FILE='kontena.yml'

elif [[ -z $PLUGIN_KONTENA_GRID ]]; then
    echo "Please set KONTENA_GRID."
    exit 1

elif [[ -z $PLUGIN_KONTENA_STACK ]]; then
    echo "Please set KONTENA_STACK."
    exit 1
fi

export KONTENA_URL=$PLUGIN_KONTENA_URL
export KONTENA_GRID=$PLUGIN_KONTENA_GRID
export KONTENA_TOKEN=$PLUGIN_KONTENA_TOKEN

kontena stack install --name $PLUGIN_KONTENA_STACK $PLUGIN_KONTENA_FILE || \
    kontena stack upgrade $PLUGIN_KONTENA_STACK $PLUGIN_KONTENA_FILE
