#!/bin/bash

# Download zip
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# Add neovim to path
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
