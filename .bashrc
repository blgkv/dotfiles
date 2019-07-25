#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias rm='rm -vi'
alias cp='cp -v'
alias cpbuffer='xclip -sel clip'

parse_git_branch() { #simple function to get git branch if in .git directory
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
if [ $USER == "root" ]; then
    export PS1="\[\033[38;5;8m\][\[$(tput sgr0)\]\[\033[38;5;51m\]\A\[$(tput sgr0)\]\[\033[38;5;8m\]]\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;124m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;195m\]@\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;50m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;44m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \\$ \[$(tput sgr0)\]"
else
    export PS1="\[\033[38;5;8m\][\[$(tput sgr0)\]\[\033[38;5;51m\]\A\[$(tput sgr0)\]\[\033[38;5;8m\]]\[$(tput sgr0)\]\[\033[38;5;38m\]\u\[$(tput sgr0)\]\[\033[38;5;195m\]@\[$(tput sgr0)\]\[\033[38;5;37m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;44m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\$(parse_git_branch) \\$ \[$(tput sgr0)\]"
fi

export QT_QPA_PLATFORMTHEME=qt5ct

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/opt/android-sdk/platform-tools:/var/lib/flatpak/exports/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/artem/bin:/home/artem/bin:/home/artem/.vimpkg/bin"
