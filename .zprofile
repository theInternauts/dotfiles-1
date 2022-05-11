eval "$(/opt/homebrew/bin/brew shellenv)"

# Rbenv autocomplete and shims
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
# Path for RBENV
test -d "$HOME/.rbenv/" && PATH="$HOME/.rbenv/bin:$PATH"

# Path changes are made non-destructive with PATH=new_path;$PATH   This is like A=A+B so we preserve the old path

# Path order matters, putting /usr/local/bin before /usr/bin
# ensures brew programs will be seen and used before another program
# of the same name is called

# Colors ls should use for folders, files, symlinks etc, see `man ls` and
# search for LSCOLORS
export LSCOLORS=ExGxFxdxCxDxDxaccxaeex
# Force ls to use colors (G) and use humanized file sizes (h)
alias ls='ls -GhCal'

# Force grep to always use the color option and show line numbers
export GREP_OPTIONS='--color=always'

# Symlink Sublime Test if it is not already done
if grep sya /usr/local/bin/subl; then 
	ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/.;
	echo [CUSTOM CONFIG]: symlinking Sublime Text; 
fi

# Set sublime as the default editor
which -s subl && export EDITOR="subl --wait"

# Useful aliases

alias e="subl"
