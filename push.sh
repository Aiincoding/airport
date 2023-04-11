#!/bin/bash
WORK_DIR="$(cd "$(dirname $0)" && pwd)"
cd $WORK_DIR || exit 1

git add .
git commit -m "YW-$(date +%Y%m%d): auto add commit"
git push
git push origin main:release
