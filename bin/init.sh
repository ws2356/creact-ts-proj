#!/usr/bin/env bash
set -e

if [ $# -lt 1 ] ; then
  echo "Usage: $0 <project name>"
  exit 1
fi

name="$1"
git_repo='https://github.com/ws2356/creact-ts-proj'

git clone "$git_repo" "$name" && \
  cd "$name" && \
  rm -rf .git && \
  rm -rf bin && \
  git init && \
  git add .
