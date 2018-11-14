#!/bin/sh
hooktest --scheme epidoc --console --verbose 10 --json /sources/$1/result.json -w 5 --guidelines 2.epidoc /sources/$1
echo "data = "|cat - /sources/$1/result.json > /tmp/out && mv /tmp/out /sources/$1/result.json
cp /cmds/results.html /sources/$1/results.html