#!/bin/bash

if [[ -z $KONTENA_URL ]]; then
    echo "Please set KONTENA_URL."
    exit 1
elif [[ -z $KONTENA_TOKEN ]]; then
    echo "Please set KONTENA_TOKEN."
    exit 1
elif [[ -z $KONTENA_GRID ]]; then
    echo "Please set KONTENA_GRID."
    exit 1
elif [[ -z $PLUGIN_KONTENA_STACK ]]; then
    echo "Please set KONTENA_STACK."
    exit 1
fi


kontena stack install --name $PLUGIN_KONTENA_STACK || \
    kontena stack upgrade $PLUGIN_KONTENA_STACK
