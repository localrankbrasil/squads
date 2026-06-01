#!/usr/bin/env bash
set -euo pipefail

message="${1:-Update work session}"

git status

if [ -z "$(git status --porcelain)" ]; then
  echo "No changes to commit."
  exit 0
fi

git add .
git commit -m "$message"
git push origin main

