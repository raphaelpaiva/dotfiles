# Dotfiles

## Requirements
* GNU stow: `brew install stow`, `apt install stow` or whatever your package manager is.

## Installing
If you're crazy enough, run `make` to install / reinstall changes.
This will add the initialization scripts for the aliases in your shell rc file. The script uses `$HOME/.$(basename $SHELL)rc` to determine your rc file. Tested with `bash` and `zsh`.

## Individual modules
If you want just individual modules, only the aliases, for instance, you can use `stow --verbose --target=$HOME --restow <module_name>`

A module is essentially a folder in the root of this repo, like `aliases`, `skhd`, `yabai`.

## Uninstalling
To uninstall, run `make delete`.
