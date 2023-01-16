#!/bin/bash

set -e

out="${1:-out/messages}"

if ! command -v imessage-exporter; then
    echo "ERROR: could not find imessage-exporter, see https://github.com/ReagentX/imessage-exporter"
    exit 1
fi

if test -d out/messages; then
    echo "ERROR: out/messages directory already exists, please remove it"
    exit 1
fi

mkdir -p "$out/html"
pushd "$out/html"
imessage-exporter -f html -o .
popd

mkdir -p "$out/txt"
pushd "$out/txt"
imessage-exporter -f txt -o .
popd
