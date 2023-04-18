#!/usr/bin/env bash
set -e

echo "Installing dotfiles..."
git clone -b devcontainer --recurse-submodules https://github.com/mjyc/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install-deps.sh
./sync.sh -f
