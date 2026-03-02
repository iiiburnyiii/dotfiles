#!/usr/bin/env fish

function kitty_theme_complete -d "Complete the theme command"
  # Only completes first argument
  if __fish_is_first_arg > /dev/null
    # Path to search for theme conf files
    set -l theme_folder (command realpath ~/.config/kitty/kitty-themes/themes)

    for theme in $theme_folder/*.conf
      set -l theme_name (basename $theme .conf)
      echo $theme_name
    end
  end
end

complete -c kitty_theme -fk -a "(kitty_theme_complete)"
