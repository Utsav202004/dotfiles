#!/bin/bash

echo "Installing dotfiles..."

# Creating backup directory with a timestamp
BACKUP_DIR="$HOME/.dotfiles_backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"
echo "Backing up existing files to $BACKUP_DIR"

# Safely creating symlinks
link_file() {
    local src=$1
    local dest=$2
    
    # If file exists and isn't a symlink, backing it up
    if [ -e "$dest" ] && [ ! -L "$dest" ]; then
        cp "$dest" "$BACKUP_DIR/"
        echo "Backed up $(basename $dest)"
    fi
    
    # Creating symlink (force overwrite)
    ln -sf "$src" "$dest"
    echo "Linked $(basename $src)"
}

# Create symlinks
link_file ~/dotfiles/.bashrc ~/.bashrc
link_file ~/dotfiles/.bash_profile ~/.bash_profile
link_file ~/dotfiles/.vimrc ~/.vimrc
link_file ~/dotfiles/.gitconfig ~/.gitconfig
link_file ~/dotfiles/.zshrc ~/.zshrc
link_file ~/dotfiles/.tmux.conf ~/.tmux.conf


echo "Dotfiles installation complete!"
echo "Backups saved to: $BACKUP_DIR"
