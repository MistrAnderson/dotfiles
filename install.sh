#!/bin/bash

CNF_DIR="$HOME/.config"

DOTF="$HOME/dotfiles"
FILES=( $DOTF/*.conf )

clone_repo() {
  local repo_url=$1
  local destination=$2

  if git clone "$repo_url" "$destination"; then
    echo "Successfully cloned $(basename "$repo_url")"
  else
    echo "Failed to clone $(basename "$repo_url"). Exiting..."
    exit 1
  fi
}

# ZSH CONFIG
if [[ ! -d "$DOTF/zsh/plugins" ]]; then
	mkdir -p "$DOTF/zsh/plugins"
	git clone git@github.com:zsh-users/zsh-syntax-highlighting.git $DOTF/zsh/plugins/
	git clone git@github.com:zsh-users/zsh-autosuggestions.git $DOTF/zsh/plugins/

	echo "Cloned zsh plugins"
fi

# TMUX CONFIG
if [[ ! -d "$DOTF/tmux/plugins/tpm" ]]; then
	mkdir -p "$DOTF/tmux/plugins"
	git clone https://github.com/tmux-plugins/tpm $DOTF/tmux/plugins/tpm

	echo "Cloned tmux Plugin Manager"
fi


# CREATE SYMLINKS 
# for config files

for file in "${FILES[@]}"; do
	filename=$(basename "$file") # Get only the file name
	filename="${filename%.conf}" # Removes the .conf extention

	mkdir -p "$CNF_DIR/$filename"

  if [[ ! -L "$CNF_DIR/$filename/$filename.conf" ]]; then
    ln -sf "$file" "$CNF_DIR/$filename/$filename.conf"

    echo "Symlink for $filename created"
  fi
done


# Symlinks the full directory of neovim
if [[ ! -L "$CNF_DIR/nvim" ]]; then
  ln -s "$DOTF/nvim" "$CNF_DIR/nvim"

	echo "Symlink for nvim created"
fi

if [[ ! -L "$HOME/.zshrc" ]]; then
  ln -s "$DOTF/zsh/zshrc" "$HOME/.zshrc"

	echo "Symlink for zshrc created"
fi
