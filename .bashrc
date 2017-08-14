#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
alias ls='ls --color=auto'
alias rm='rm -i'
alias cpbuffer='xclip -sel clip'
parse_git_branch() { #simple function to get git branch if in .git directory
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[38;5;8m\][\[$(tput sgr0)\]\[\033[38;5;44m\]\A\[$(tput sgr0)\]\[\033[38;5;8m\]]\[$(tput sgr0)\]\[\033[38;5;38m\]\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\[$(tput sgr0)\]\[\033[38;5;37m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;44m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\$(parse_git_branch) \\$ \[$(tput sgr0)\]"

