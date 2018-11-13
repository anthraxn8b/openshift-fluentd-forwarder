#!/bin/bash

# Use a kind of "strict" mode: http://redsymbol.net/articles/unofficial-bash-strict-mode/
# To show the commands in output add the "x" parameter (before "o"!).
set -euo pipefail
IFS=$'\n\t'

# test that something is listening on the fluentd secure_forward port
RESULT=`ss -tnlp 2>/dev/null | grep 24284`

# if no port is running, fail
if [ "" == "${RESULT}" ]; then
    exit 1
fi

# otherwise explicit clean exit
exit 0