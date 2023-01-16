#!/bin/bash

set -e

out="${1:-out}"

echo $out

./scripts/messages.sh "$out/messages"
./scripts/photos.sh "$out/photos"
