#!/usr/local/bin/fish

function sync_theme --description "Sync theme with system"
  set -l mode "light" # default value
  set -l system_mode (defaults read -g AppleInterfaceStyle 2> /dev/null)

  if test $status -ne 1
    set mode "dark"
  else 
    switch $system_mode
      case "Dark"
        set mode "dark"
      case "Light"
        set mode "light"
    end
  end
    
  # change kitty
  switch $mode
    case "dark"
      kitty_theme Tomorrow_Night_Bright
    case "light"
      kitty_theme Tomorrow
  end
end
