# Easy-Up

A CLI interface for getting a proper development environment installed on your computer.  In development for and by Students
at MSU Denver.

## How it works

This tool lets students set up a development environment on their machine. It utilizes Homebrew (on MacOS) and
apt (on Linux). Personally, I don't care to maintain a Windows Version and anyone willing to, can make contributions
to the project on GitHub.

If you'd like to use it on Windows, I suggest setting up Windows Subsystem for Linux (wsl) on your machine
and running the install scripts on it.

- https://docs.microsoft.com/en-us/windows/wsl/install


## Pre-requisites

1. Check to make sure you have xCode Developer Tooling installed:
    - This will make sure that `git`, `gcc` and, `clang` are installed on you Mac.
    
    ### To Double Check
    
    - Open terminal `CMD + Spacebar` and search 'Terminal' then run this command: `xcode-select --install`

2. Once those are installed you can clone this repo from your `$HOME` directory:

```bash
git clone https://www.github.com/BadrChoubai/.dotfiles .dotfiles
```

This will clone the repository into a folder called '.dotfiles', `cd` into it and continue 
with the following instructions

## How to use it

1. Setup and run the script

```bash
sudo chmod +x ./easy-up.sh
./easy-up.sh
```

## Supported Programming Languages
    - Python
    - Java / JDK
    - C# (.Net)
