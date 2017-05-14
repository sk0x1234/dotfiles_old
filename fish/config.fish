# Globally recognised variables
set -g -x VISUAL nvim
set -g -x EDITOR nvim
set -g -x PAGER less 


# Start X at login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end
