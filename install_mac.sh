# Install homebrew
echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install required packages
echo "Installing git"
brew install git

echo "Installing wget"
brew install wget

# Install antigen
echo "Installing antigen"
mkdir $HOME/.antigen
curl -s -L git.io/antigen >$HOME/.antigen/antigen.zsh

# Import configuration
echo "Importing configuration"
curl -s -L raw.githubusercontent.com/Hanzo-Huang/Build-Perfect-Workspace/refs/heads/main/zshrc >$HOME/.zshrc
curl -s -L raw.githubusercontent.com/Hanzo-Huang/Build-Perfect-Workspace/refs/heads/main/antigenrc >$HOME/.antigenrc

# reload shell
exec zsh