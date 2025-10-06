#!/usr/bin/env bash

# Define QWERTY layout order
qwerty="1234567890qwertyuiopasdfghjklzxcvbnm"

# Get all workspaces and sort by QWERTY order
aerospace list-workspaces --all --format "%{monitor-id} %{workspace}" \
  | sort -k2,2 --key=2,2 --sort=general-numeric \
  | awk -v order="$qwerty" '
    BEGIN {
      for (i = 1; i <= length(order); i++)
        pos[substr(order, i, 1)] = i
    }
    {
      key = tolower($2)
      print (pos[key] ? pos[key] : 9999), $0
    }
  ' \
  | sort -n \
  | cut -d' ' -f2-
