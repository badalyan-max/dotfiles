# Dotfiles

Personal configuration files for Claude Code and other tools.

## Contents

- `claude/CLAUDE.md` - Global Claude Code rules (apply to all projects)

## Installation

### Windows (PowerShell as Admin)

```powershell
.\install.ps1
```

### Linux / macOS

```bash
./install.sh
```

## Manual Installation

If you prefer to set up manually:

### Windows

```powershell
# Clone the repo
git clone https://github.com/badalyan-max/dotfiles.git $HOME\dotfiles

# Create symlink (run as Administrator)
New-Item -ItemType SymbolicLink -Path "$HOME\.claude\CLAUDE.md" -Target "$HOME\dotfiles\claude\CLAUDE.md" -Force
```

### Linux / macOS

```bash
# Clone the repo
git clone https://github.com/badalyan-max/dotfiles.git ~/dotfiles

# Create symlink
mkdir -p ~/.claude
ln -sf ~/dotfiles/claude/CLAUDE.md ~/.claude/CLAUDE.md
```

## Updating

Just pull the latest changes:

```bash
cd ~/dotfiles  # or $HOME\dotfiles on Windows
git pull
```

The symlink ensures changes are automatically applied.
