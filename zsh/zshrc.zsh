###-----------	zsh options -----------###

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt PROMPT_SUBST

precmd_functions+=(prompt)

# prompt

prompt () {
    PROMPT='✨ %F{blue}$(pwd)%f%F{green}$(if [ -e .git ]; then git branch 2>/dev/null | grep '^*' | tr "*" ":"; fi)%f  '
    RPROMPT='%F{yellow}⏰  $(date +"%H:%M")%f'
}

###-----------	Configure $PATH -----------###

export DOTFILES="$HOME/.dotfiles"
export GOPATH="$HOME/Code/go"

export PATH="$DOTFILES/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export RUBY_CONFIGURE_OPTS=--with-readline-dir="$(brew --prefix readline)"

### load zsh config files ###

# source "$HOME/.dotfiles/zsh/aesthetics.zsh"
source "$HOME/.dotfiles/zsh/functions.zsh"
source "$HOME/.dotfiles/zsh/aliases.zsh"
source "$HOME/.dotfiles/secrets.zsh"

source "/usr/local/bin/google-cloud-sdk/path.zsh.inc"

###-----------	Shell config -----------###

# autocomplete
source /usr/local/share/zsh/site-functions/git-completion.bash 2>/dev/null

# always color matches  
GREP_OPTIONS='--color=auto'
