#!/usr/bin/env fish

function kitty_theme -d "Change kitty theme" -a theme_name
  # Do nothing if there is no theme specified
  if [ -z "$theme_name" ]
    return
  end

  # Path to search for theme conf files
  set -l theme_folder (realpath ~/.config/kitty/kitty-themes/themes)

  # Full path to theme
  set -l theme_path "$theme_folder/$theme_name.conf"

  # If theme exists, change theme
  if [ -e "$theme_path" ]
    # Change for current session
    /usr/local/bin/kitty @ --to=unix:/tmp/kitty.sock set-colors --all --configured $theme_path
  end
end
