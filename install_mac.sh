# Install homebrew
echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >>/Users/hanzo/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>/Users/hanzo/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install required packages
echo "Installing git"
brew install git

echo "Installing wget"
brew install wget

# Install antigen
echo "Installing antigen"
mkdir $HOME/.antigen
curl -s -L git.io/antigen >$HOME/.antigen/antigen.zsh

# Install Wezterm
echo "Installing Wezterm"
brew install --cask wezterm

# Import configuration
echo "Importing configuration"
curl -s -L raw.githubusercontent.com/Hanzo-Huang/Build-Perfect-Workspace/refs/heads/main/zshrc >$HOME/.zshrc
curl -s -L raw.githubusercontent.com/Hanzo-Huang/Build-Perfect-Workspace/refs/heads/main/antigenrc >$HOME/.antigenrc
