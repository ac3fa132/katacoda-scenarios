#!/bin/bash

# Log script activity (https://serverfault.com/a/103569)
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>/var/log/init-background.log 2>&1
set -x

cat >> "${HOME}"/.bashrc << EOF
PS1="# "
EOF
source "${HOME}"/.bashrc

touch /var/run/.background_init_done
