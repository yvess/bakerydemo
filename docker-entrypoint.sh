#!/usr/bin/env bash

# Copy SSH private key to file, if set
# This is used for talking to GitHub over an SSH connection
echo $SSH_PRIVATE_KEY | base64 --decode > $HOME/.ssh/id_rsa
# ssh -oStrictHostKeyChecking=no -T github.com

exec "$@"
