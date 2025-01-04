#!/bin/sh

if [ -z "$1" ]; then
    echo "Error: Missing required parameter"
    exit 1
fi

/usr/bin/wg-quick down $1

rm /run/$1.pid