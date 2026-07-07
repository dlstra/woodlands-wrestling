#!/bin/bash
set -e
cd "/Users/danastrange/Woodlands Wrestling HS"

git add .

if git diff --cached --quiet; then
  echo "No changes to commit."
else
  git commit -m "update"
fi

if git push origin main; then
  echo "Done! Site will update in ~30 seconds."
else
  echo "ERROR: git push failed. Nothing was deployed." >&2
  exit 1
fi
