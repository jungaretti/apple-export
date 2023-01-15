#!/bin/bash

set -e
if ! command -v imessage-exporter; then
    echo "ERROR: could not find imessage-exporter, see https://github.com/ReagentX/imessage-exporter"
    exit 1
fi

imessage-exporter -f html -o out/messages/html
imessage-exporter -f txt -o out/messages/txt
