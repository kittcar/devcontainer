#!/bin/bash

# Xforward to developer
touch /root/.Xauthority
xauth add "${DISPLAY}" . "${AUTH_COOKIE}"

# Run bash terminal for user.
exec "$@"
