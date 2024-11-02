#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt update

# Install required packages
echo "Installing zsh, git, curl, and wget..."
sudo apt install -y zsh git curl wget

# Change the default shell to zsh
echo "Changing default shell to zsh..."
chsh -s $(which zsh)

# Install antigen
echo "Installing antigen"
mkdir $HOME/.antigen
curl -L git.io/antigen >$HOME/.antigen/antigen.zsh

# Import configuration
echo "Importing configuration"
curl -L raw.githubusercontent.com/Hanzo-Huang/Build-Perfect-Workspace/refs/heads/main/zshrc >$HOME/.zshrc
curl -L raw.githubusercontent.com/Hanzo-Huang/Build-Perfect-Workspace/refs/heads/main/antigenrc >$HOME/.antigenrc

# reload shell
exec zsh
