#!/bin/bash

set -e

if ! command -v imessage-exporter; then
    echo "ERROR: could not find imessage-exporter, see https://github.com/ReagentX/imessage-exporter"
    exit 1
fi

if test -d out/messages; then
    echo "ERROR: out/messages directory already exists, please remove it"
    exit 1
fi

mkdir -p out/messages/html
pushd out/messages/html
imessage-exporter -f html -o .
popd

mkdir -p out/messages/txt
pushd out/messages/txt
imessage-exporter -f txt -o .
popd
