####################################################################################
####################################################################################
##████████████████████████████████████████████████████████████████████████████████##
##█░░░░░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░██░░░░░░███████████████████████████████##
##█░░▄▀▄▀▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░███████████████████████████████##
##█░░░░░░░░░░░░▄▀▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░█████░░░░░░█████████░░░░░░█████##
##█████████░░░░▄▀░░░░█░░▄▀░░█████████░░▄▀░░██░░▄▀░░█████░░▄▀░░█████████░░▄▀░░█████##
##███████░░░░▄▀░░░░███░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░░░░░▄▀░░░░░░█░░░░░░▄▀░░░░░░█##
##█████░░░░▄▀░░░░█████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█##
##███░░░░▄▀░░░░███████░░░░░░░░░░▄▀░░█░░▄▀░░░░░░▄▀░░█░░░░░░▄▀░░░░░░█░░░░░░▄▀░░░░░░█##
##█░░░░▄▀░░░░█████████████████░░▄▀░░█░░▄▀░░██░░▄▀░░█████░░▄▀░░█████████░░▄▀░░█████##
##█░░▄▀▄▀░░░░░░░░░░░░█░░░░░░░░░░▄▀░░█░░▄▀░░██░░▄▀░░█████░░░░░░█████████░░░░░░█████##
##█░░▄▀▄▀▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░███████████████████████████████##
##█░░░░░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░██░░░░░░███████████████████████████████##
##████████████████████████████████████████████████████████████████████████████████##
####################################################################################
####################################################################################


export ZSH="/home/siddharth/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="risto"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="white
#
# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# plugins
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
fi

# Export terminal
export TERM=xterm-256color

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Aliasis
alias du="du -h"
alias la="ls -lA"
#alias pip="pip3"
alias rm="rm -I"
alias fzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias apt="sudo apt"
alias v="vim"
alias nv="nvim"
alias ls='ls --color=auto -X'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ytdl='youtube-dl'
alias tmat='tmux attach -t '
alias tmkt='tmux kill-session -t '
alias commitcount='git log | grep -c commit'
#alias ls="ls -X"
# Startup commands

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

bindkey -s '^O' 'v $(fzf)^M'
bindkey -s '^P' 'fzf^M'
bindkey -s '^R' 'ranger'

alias luamake=/home/siddharth/.config/lua-language-server/3rd/luamake/luamake
