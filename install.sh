#!/bin/bash
# Linux/macOS Installation Script for Dotfiles

set -e

echo "Installing dotfiles..."

# Get the directory where this script is located
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Claude Code configuration
CLAUDE_DIR="$HOME/.claude"
CLAUDE_SOURCE="$DOTFILES_DIR/claude/CLAUDE.md"
CLAUDE_TARGET="$CLAUDE_DIR/CLAUDE.md"

# Create .claude directory if it doesn't exist
mkdir -p "$CLAUDE_DIR"

# Remove existing file/symlink if present
if [ -e "$CLAUDE_TARGET" ] || [ -L "$CLAUDE_TARGET" ]; then
    rm "$CLAUDE_TARGET"
    echo "Removed existing $CLAUDE_TARGET"
fi

# Create symlink
ln -s "$CLAUDE_SOURCE" "$CLAUDE_TARGET"
echo "Created symlink: $CLAUDE_TARGET -> $CLAUDE_SOURCE"

echo ""
echo "Installation complete!"
echo "Restart Claude Code to apply the global rules."
