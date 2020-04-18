#!/bin/bash
set -e

if [ $# -gt 1 ]; then
    echo $@ | /bin/bash -li
else
    exec bash -li -c "$@"
fi