#!/usr/bin/env bash

set -euo pipefail

if [ -d 'test' ]; then
  cd 'test'
fi

for f in *.bats ; do
  bats "$f"
done
