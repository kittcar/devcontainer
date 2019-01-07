#!/bin/bash

DISPLAY_NUMBER=$(echo "$DISPLAY" | cut -d. -f1 | cut -d: -f2)
AUTH_COOKIE=$(xauth list | grep "^$(hostname)/unix:${DISPLAY_NUMBER} " | awk '{print $3}')
export AUTH_COOKIE
