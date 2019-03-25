alias ll="ls -la --color=always"
alias la="ls -l --color=always"

if [[ $- == *i* ]]; then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

#unlimited bash history
export HISTFILE=$HOME/.bash_history
export HISTSIZE=-1
export HISTFILESIZE=-1
#show timestamp in history
export HISTTIMEFORMAT="%d/%m/%y %T "

force_color_prompt=yes
source /usr/share/bash-completion/completions/git
if [-f source ~/.sdb/.sdb-completion.bash]; then
    source /usr/share/bash-completion/completions/git
fi
alias grep="grep --color=auto"

if [ "$force_color_prompt" = yes ]; then
    PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] '
else
    PS1='\u@\h:\w '
fi

mkdircd()
{
    mkdir "$1" && cd "$1";
}
alias mcd="mkdircd"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias st="git status"
alias log='grep -E "$(echo $(LC_ALL=en_US.UTF-8 date +"%b %d") | sed -E "s/0([1-9])/ \1/g").*unlocked" /var/log/auth.log* | sed -E "s/([^:]*):(.*)`hostname`(.*)/\2/g" | sort | head -n 1'
alias puml='java -jar /opt/plantUML.jar'
alias myIp='wget http://ipinfo.io/ip -qO -'
alias gitf='git show --pretty="format:" --name-status'

plantuml()
{
    java -jar /opt/plantUML.jar "$1" && xdg-open ${1%.*}.png
}

# Enable programmable sdb completion features.
if [ -f ~/.sdb/.sdb-completion.bash ]; then
    source ~/.sdb/.sdb-completion.bash
fi
