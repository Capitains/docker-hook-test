#!/bin/sh
hooktest --scheme tei --json /sources/$1/result.json -w 5 -c /sources/$1
echo "data = "|cat - /sources/$1/result.json > /tmp/out && mv /tmp/out /sources/$1/result.json
cp /cmds/results.html /sources/$1/results.html