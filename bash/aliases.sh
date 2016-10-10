alias h=history
alias ll="ls -al"
alias ...='cd ..'
alias more='less'
alias ls='ls -G'
alias la='ls -al'
alias lsd='ls -d */' # List only subdirectories
alias sls='screen -ls'
alias tls='tmux ls'

ta() { tmux a -t "$@" ;}
tn() { tmux new -s "$@" ;}
sr() { screen -D -R "$@" ;}
sd() { screen -d "$@" ;}

# Git clone single
gcs() { 
    repo=$1
    branch=$2
    dest=$3

    if [ "$#" -ne 3 ]; then
        echo "git clone a single branch"
        echo "Usage: gcs <repo> <branch> <destination>"
        return 1
    fi
    git clone $1 --single-branch --branch $2 $3
}

