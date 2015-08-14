#!/bin/bash

if [ $(ls -ld /data | awk '{print $3":"$4}') != "nginx:nginx" ]; then
  chown -R nginx:nginx /data
fi

exec "$@"
