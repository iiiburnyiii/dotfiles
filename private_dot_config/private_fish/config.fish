#!/usr/bin/env fish

# VARS
set -g EDITOR nvim
set -g VISUAL zed
set -g QEMU_AUDIO_DRV none
set -g ANDROID_HOME /Users/Shared/Android/sdk

# PATH
fish_add_path -g $HOME/go/bin
fish_add_path -g $HOME/.jenv/bin
fish_add_path -g $ANDROID_HOME/platform-tools
fish_add_path -g $ANDROID_HOME/emulator
fish_add_path -g /Applications/Postgres.app/Contents/Versions/latest/bin
fish_add_path -g /usr/local/opt/qt/bin
fish_add_path -g /usr/local/sbin
fish_add_path -g $PYENV_ROOT/bin
fish_add_path -g /opt/homebrew/bin
fish_add_path -g /opt/homebrew/sbin
fish_add_path -g /System/Volumes/Data/Applications/Obsidian.app/Contents/MacOS/Obsidian

# Fisher
set -g fisher_path ~/.config/fish/fisher

set fish_function_path $fish_function_path[1] $fisher_path/functions $fish_function_path[2..-1]
set fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path[2..-1]

for file in $fisher_path/conf.d/*.fish
    builtin source $file 2> /dev/null
end

# starship
starship init fish | source

# Mole shell completion
set -l output (mole completion fish 2>/dev/null); and echo "$output" | source
