#!/usr/bin/env bash

set -e

REPO_URL="git@github.com:phuwanart/macos-auto-setup.git"
CLONE_DIR="$HOME/Projects/macos-auto-setup"

echo "⏳ Bootstrapping macOS Auto Setup..."

# Install Xcode Command Line Tools (includes Git)
if ! command -v git &> /dev/null; then
  echo "🔧 Installing Xcode Command Line Tools (required for Git)..."
  xcode-select --install

  # Wait until installation is complete
  until command -v git &> /dev/null; do
    sleep 5
  done
  echo "✅ Git is now installed."
fi

# Clone the repo if it hasn't been cloned yet
if [ ! -d "$CLONE_DIR" ]; then
  echo "📥 Cloning macOS Auto Setup into $CLONE_DIR..."
  mkdir -p "$(dirname "$CLONE_DIR")"
  git clone "$REPO_URL" "$CLONE_DIR"
else
  echo "📁 Directory $CLONE_DIR already exists. Skipping clone."
fi

# Run main bootstrap script
cd "$CLONE_DIR"
echo "🚀 Running main bootstrap script..."
exec ./bootstrap.sh
