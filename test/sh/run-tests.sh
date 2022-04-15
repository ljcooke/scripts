#!/usr/bin/env bash

set -euo pipefail

if [ -d 'test/sh' ]; then
  cd 'test/sh'
fi

for f in *.bats ; do
  bats "$f"
done
