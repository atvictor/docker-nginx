#!/bin/bash

if [ $(ls -ld /nginx | awk '{print $3":"$4}') != "nginx:nginx" ]; then
  chown -R nginx:nginx /nginx
fi

exec "$@"
