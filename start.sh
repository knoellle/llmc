#!/usr/bin/env sh

podman run \
      --name opencode-sandbox \
      --userns=keep-id \
      -p 1455:1455 \
      --init \
      -d \
      -v ./$USER:/home/$USER \
      -v ~/hulks/hulk:/home/$USER/hulks/hulk \
      opencode-sandbox:latest \
      sleep infinity
