#!/usr/bin/env bash

BREW_CMD="$(command -v brew)"



case "$OSTYPE" in
    darwin*)
        echo "You are on MacOS"
        if [[ -n "$BREW_CMD" ]]; then 
            echo "Homebrew is installed at $(which brew)"
        else 
            echo "Homebrew is not installed."
            echo "Installing now..."
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

            echo "Setting up homebrew bundle" 
            brew tap Homebrew/bundle

            echo "Installing applications and programming languages"
            brew bundle --file="$HOME/MSUdotfiles/homebrew/Brewfile"
        fi 
        ;;
esac
