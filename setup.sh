#!/bin/bash

# Exit on error
set -e

echo "🚀 Starting development environment setup..."

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    echo "📦 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew already installed"
fi

# Update Homebrew
echo "🔄 Updating Homebrew..."
brew update

# Install Git if not installed
if ! command -v git &> /dev/null; then
    echo "📦 Installing Git..."
    brew install git
else
    echo "✅ Git already installed"
fi

# Install common development tools
echo "📦 Installing development tools..."
brew install \
    node \
    cursor \
    postman \
    slack \
    spotify \
    dbngin \
    nvm \
    discord \
    notion \
    beekeeper-studio \
    bitwarden \ 
    raycast \ 
    figma  \
    1password \
    arc \
    warp \
    yaak \
    linear-linear

echo "📦 Installing Monocraft font..."
brew tap homebrew/cask-fonts
brew install font-monocraft

# Configure Git
echo "⚙️ Configuring Git..."
    git config --global init.defaultBranch main
    git config --global core.editor "code --wait"   

echo "✨ Setup complete! Your development environment is ready to go."
echo "📝 Next steps:"
echo "Configure your Git username and email"