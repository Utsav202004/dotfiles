
# My Dotfiles 🛠️

Personal configuration files for my macOS development environment.

## 📦 What's Included

- `.bashrc` - Shell aliases and minimal config
- `.bash_profile` - Conda initialization
- `.gitconfig` - Git aliases and settings
- `.vimrc` - Vim config (MIT Missing Semester based)
- `.zshrc` - Oh My Zsh with plugins and custom aliases  
- `.tmux.conf` - Tmux with custom prefix (Ctrl-a) and mouse support
- `install.sh` - Safe installation with automatic backups

## 🚀 Quick Install

```bash
git clone https://github.com/Utsav202004/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

Note: Creates timestamped backups before overwriting files.

## ✨ Features

### Shell Aliases
- `sl` → ls (typo fix)
- `ll` → ls -lah
- `gs` → git status
- `gc` → git commit
- Safety: `rm, cp, mv` → ask before overwrite

### Git Shortcuts
- `git graph` - Pretty branch visualization
- `git last` - Show last commit

### Tmux
- Prefix: Ctrl-a (instead of Ctrl-b)
- Split: | horizontal, - vertical
- Mouse enabled
- Reload: Prefix + r

## 📝 Prerequisites
- Oh My Zsh
- Homebrew (macOS)
- Anaconda
