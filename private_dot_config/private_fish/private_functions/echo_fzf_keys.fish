function echo_fzf_keys
    echo "
    Legacy	    |  New Keybindings	|  Remarks
    Ctrl-t	    |  Ctrl-o	        |  Find a file.
    Ctrl-r	    |  Ctrl-r	        |  Search through command history.
    Alt-c	    |  Alt-c	        |  cd into sub-directories (recursively searched).
    Alt-Shift-c |  Alt-Shift-c	    |  cd into sub-directories, including hidden ones.
    Ctrl-o	    |  Alt-o	        |  Open a file/dir using default editor ($EDITOR)
    Ctrl-g	    |  Alt-Shift-o	    |  Open a file/dir using xdg-open or open command
    "
end