#!/usr/bin/env bash

keyboard_prompt=$(xkblayout-state print "%n(%s)")
echo "  $keyboard_prompt" | awk '{ printf("  %s\n"), $1 }'
