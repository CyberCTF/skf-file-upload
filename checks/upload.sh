#!/bin/sh
# A .txt upload is accepted.
set -e
H=http://web:5000
printf probe > /tmp/probe$$.txt
curl -fsS -F "file=@/tmp/probe$$.txt" "$H/" | grep -q "File was uploaded"
