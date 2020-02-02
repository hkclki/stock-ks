#!/bin/bash

set -e
if [ "$1" = 'start' ]; then
  if [ $MODE = "production" ]; then
  npm run build --release
  node ./build/server.js
    else
    npm run dev
  fi
fi

exec "$@"
