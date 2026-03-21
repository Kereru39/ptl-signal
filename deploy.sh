#!/bin/bash
# Quick deploy script for PTL Signal
# Run: ./deploy.sh or ./deploy.sh "your commit message"

MESSAGE="${1:-update}"

cd "$(dirname "$0")" || exit 1
git add .
git commit -m "$MESSAGE"
git push
