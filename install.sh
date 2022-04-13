#!/usr/bin/env bash

BREW_CMD="$(command -v brew)"
MSU_DOTFILES="$HOME/MSUdotfiles/"

: " Which languages would you like to install? 
    Example format: languages=(python dotnet-sdk java)

    Keep in mind that some languages require other packages to be installed prior to installation.
"
languages=(python)


: '
    Parse passed in arguments: These flags will be implemented soon.
' 
while test $# -gt 0; do
    case "$1" in
        -d|--down)
            echo "Tearing down installed packages"
            # TODO: Implement teardown script
            shift
            ;;
        -s|--skip-brew)
            echo "Skipping homebrew installation"
            : " TODO: Implement skip of homebrew installation (User knows they already have it
                installed on their machine) 
            "
            shift
            ;;
    esac
done

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
            if [[ -e "$MSU_DOTFILES/darwin/Brewfile" ]]; then
                brew bundle --file="$MSU_DOTFILES/darwin/Brewfile"
            fi
        fi 
        ;;
    linux-gnu)
        ;;
esac
