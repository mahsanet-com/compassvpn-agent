#!/bin/sh

/usr/bin/xray -c /etc/xray/config.json &

sleep 1

echo $! > /run/xray.pid