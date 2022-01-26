#!/bin/bash
# Add ssh for my laptop, desktop & phone
ssh_keys=("ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEKo4IqNGq3+3Q/B0R6JrbaNqLrQOAHtYaxsCPgnPgFD not@void", "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOtJaB8cqiu7LsYdzGlcFyF6fmsOx4gHh4PxH5ZGof9i not@ssis-l0616")
touch ~/.ssh/authorized_keys
for key in ssh_keys; do;
  echo "$key" >> ~/.ssh/authorized_keys
done
# Try to install kak via apt
if command -v apt >/dev/null; then
    sudo apt install kakoune
else
  echo "Couldn't detect apt, please install kakoune manually"
fi
# Verify that kak is installed
if command -v kak >/dev/null; then
  echo "Detected kakoune!"
else
  echo "Couldn't detect kakoune, please install kakoune"
  exit 1
fi
