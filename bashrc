#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return #lol wtf

PS1='[\u@\h \W]\$ '
alias ls='ls --color=auto' #auto color for directory contents
alias rm='rm -i' #ask before delete
alias cpbuffer='xclip -sel clip' #copy stdout to X11 buffer, useful for graphical session
parse_git_branch() { #simple function to get git branch if in .git directory
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#default desktop prompt
export PS1="\[\033[38;5;8m\][\[$(tput sgr0)\]\[\033[38;5;44m\]\A\[$(tput sgr0)\]\[\033[38;5;8m\]]\[$(tput sgr0)\]\[\033[38;5;38m\]\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\[$(tput sgr0)\]\[\033[38;5;37m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;44m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\$(parse_git_branch) \\$ \[$(tput sgr0)\]"
#server prompt, red hostname to determine if ssh session or local
export PS1="\[\033[38;5;248m\][\[$(tput sgr0)\]\[\033[38;5;44m\]\A\[$(tput sgr0)\]\[\033[38;5;248m\]]\[$(tput sgr0)\]\[\033[38;5;38m\]\u\[$(tput sgr0)\]\[\033[38;5;248m\]@\[$(tput sgr0)\]\[\033[38;5;124m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;36m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \\$ \[$(tput sgr0)\]"
