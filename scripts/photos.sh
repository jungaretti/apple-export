#!/bin/bash

set -e

out="${1:-out/photos}"

if ! command -v icloudpd; then
    echo "ERROR: could not find icloudpd, see https://github.com/icloud-photos-downloader/icloud_photos_downloader"
    exit 1
fi

if test -d out/photos; then
    echo "ERROR: out/photos directory already exists, please remove it"
    exit 1
fi

mkdir -p "$out"
pushd "$out"
icloudpd \
    --directory .
popd
