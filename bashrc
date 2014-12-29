# Source our nice prompt

# make ls command show color output
alias ls="ls -G"
# colorize everything
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Source the shared resource configuration file
source ~/dotfiles/sharedrc

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
