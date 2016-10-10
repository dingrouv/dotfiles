# Readline
set -o vi
set blink-matching-paren on

BLUE="\[\033[34m\]"
RED="\[\033[31m\]"
GREEN="\[\033[32m\]"
YELLOW="\[\033[33m\]"
CLEAR="\[\033[00m\]"

function git_branch {
    git rev-parse --abbrev-ref HEAD 2>/dev/null | sed -e 's/\(..*\)/[\1]/'
}

PS1_SERVER="${RED}\h${CLEAR}"
PS1_GIT="${YELLOW}\$(git_branch)${CLEAR}"
PS1_PATH="${GREEN}\w${CLEAR}"
PS1_PROMPT="${BLUE}>${CLEAR}"
PS1="\n${PS1_SERVER}:${PS1_PATH} ${PS1_GIT}\n${PS1_PROMPT} "

