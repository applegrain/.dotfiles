#!/bin/bash
###	Aliases

alias cd='function cdnvm(){ cd $@; if [[ -f .nvmrc ]]; then <.nvmrc nvm install; fi; };cdnvm'
alias kp="ps aux | grep puma | sed -E 's/[[:space:]]+/ /g' | cut -d' ' -f 2 | xargs kill -9"
alias br="bundle exec rspec"

###	Git

alias glg="git log --graph --decorate --oneline --abbrev-commit"
alias gp="git push origin HEAD"
alias gd="git diff"
alias gdc="git diff --cached"
alias gc="git commit"
alias gcm="git checkout main"
alias gb="git branch"
alias ga="git add"
alias gs="git status"
alias grv="git remote -v"
alias vbr="git reflog | grep -o \"checkout: moving from .* to \" |\
    sed -e 's/checkout: moving from //' -e 's/ to $//' | uniq | head -30 | grep -v 'main'"
alias del-merged='git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d'

### Hub

alias hbr="hub browse"

###	Shell

alias ll="ls -la"
alias cl="clear"
alias dots="cd ~/.dotfiles"
alias path='echo $PATH | tr -s ":" "\n"'
alias st="subl"
alias ..="cd .."
alias esh="exec $SHELL"

### Applications

alias mk="minikube"
alias kctl="kubectl"

alias pe="pyenv"

alias dk="docker"

###	Directory jumps

alias cod="cd ~/Code"
alias wor="cd ~/Desktop/words"
alias todo="vim ~/Desktop/words/todo.md"

### TO BE ORGANIZED - DO NOT DELETE
alias rubolint="bundle exec rubocop --parallel"
