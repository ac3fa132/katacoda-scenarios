#!/bin/bash

clear

while [[ ! -e /var/log/.background_init_done ]]; do
  sleep 1
done

stty sane

# Pick up any changes during background init
source "${HOME}/.bashrc"

clear
