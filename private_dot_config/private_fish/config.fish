#!/usr/bin/env fish

# VARS
set -g EDITOR nvim
set -g VISUAL fleet
set -g QEMU_AUDIO_DRV none
set -g RUSTUP_HOME $HOME/.rustup
set -g CARGO_HOME $HOME/.cargo
set -g ANDROID_HOME /Users/Shared/Android/sdk

# PATH
fish_add_path -g $HOME/go/bin
fish_add_path -g $HOME/.jenv/bin
fish_add_path -g $ANDROID_HOME/platform-tools
fish_add_path -g $ANDROID_HOME/emulator
fish_add_path -g $CARGO_HOME/bin
fish_add_path -g /Applications/Postgres.app/Contents/Versions/latest/bin
fish_add_path -g /usr/local/opt/qt/bin
fish_add_path -g /usr/local/sbin
fish_add_path -g $PYENV_ROOT/bin
fish_add_path -g /opt/homebrew/bin
fish_add_path -g /opt/homebrew/sbin

# Fisher
set -g fisher_path ~/.config/fish/fisher

set fish_function_path $fish_function_path[1] $fisher_path/functions $fish_function_path[2..-1]
set fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path[2..-1]

for file in $fisher_path/conf.d/*.fish
    builtin source $file 2> /dev/null
end

# Init jenv
# status --is-interactive
# source (jenv init -|psub)

# starship
starship init fish | source

# Completions
# if test $TERM_PROGRAM = iTerm.app
#     test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish
# end
# kitty + complete setup fish | source
# sync_theme

# aliases
# alias ssh="kitty +kitten ssh"
# alias pt="java -Dfile.encoding=UTF-8 -jar $HOME/PowerTunnel/PowerTunnel.jar --console --disable-tray"

# Added by Antigravity
fish_add_path $HOME/.antigravity/antigravity/bin

# Mole shell completion
set -l output (mole completion fish 2>/dev/null); and echo "$output" | source
