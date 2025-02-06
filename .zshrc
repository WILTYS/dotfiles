# Configuration ZSH Poétique - "L'art du terminal sublimé"

# Oh My ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Plugins
plugins=(
    git
    docker
    docker-compose
    node
    npm
    python
    pip
    poetry
    virtualenv
    zsh-autosuggestions
    zsh-syntax-highlighting
    history-substring-search
    colored-man-pages
    command-not-found
)

source $ZSH/oh-my-zsh.sh

# Variables d'environnement poétiques
export POETRY_LEVEL=11
export TRADING_EXCELLENCE=11
export QUANTUM_PRECISION=0.99999
export EDITOR='vim'
export VISUAL='vim'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export TERM="xterm-256color"

# Python Poetry
export POETRY_HOME="$HOME/.poetry"
export PATH="$POETRY_HOME/bin:$PATH"
export PYTHONPATH="$HOME/trading:$PYTHONPATH"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Aliases poétiques - "Où chaque commande est un vers"
alias poetry="cd ~/trading && echo 'Dans l\'univers du code, naît une lueur divine'"
alias harmonie="git status && echo 'L\'état de l\'art se révèle'"
alias sublime="code . && echo 'L\'éditeur s\'éveille en silence'"
alias vers='git commit -m'
alias sonnet='git push'
alias strophe='git pull'
alias meditation='git log --oneline --graph --decorate --all'

# Aliases pratiques
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias dotfiles="cd ~/dotfiles"
alias trading="cd ~/trading"
alias dev="cd ~/dev"
alias c="clear"
alias ll="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias md="mkdir -p"
alias rd="rmdir"
alias ports="netstat -tulanp"

# Docker aliases
alias d="docker"
alias dc="docker-compose"
alias dps="docker ps"
alias dimg="docker images"
alias drm="docker rm"
alias drmi="docker rmi"
alias dex="docker exec -it"
alias dlog="docker logs"
alias dcup="docker-compose up -d"
alias dcdown="docker-compose down"
alias dclog="docker-compose logs -f"

# Git aliases
alias g="git"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git pull"
alias gd="git diff"
alias gs="git status"
alias gb="git branch"
alias gco="git checkout"
alias gm="git merge"
alias gr="git rebase"
alias gf="git fetch"
alias gt="git tag"
alias glog="git log --oneline --decorate --graph"

# Python aliases
alias py="python"
alias py3="python3"
alias pip3="python3 -m pip"
alias venv="python3 -m venv venv"
alias activate="source venv/bin/activate"
alias deactivate="deactivate"
alias pytest="python -m pytest"
alias black="black ."
alias lint="pylint"
alias mypy="mypy ."

# Trading aliases
alias backtest="python scripts/backtest.py"
alias optimize="python scripts/optimize.py"
alias analyze="python scripts/analyze.py"
alias report="python scripts/generate_report.py"
alias monitor="python scripts/monitor_trades.py"

# Fonctions poétiques
function vers_du_jour() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Un nouveau vers s'inscrit dans l'éternité"
    git log -1 --pretty=format:"%h - %s" | cat
}

function harmonie_complete() {
    echo " Vérification de l'harmonie du code..."
    git status
    echo "\n Statistiques du projet..."
    git shortlog -sn
    echo "\n Derniers commits..."
    git log --oneline -n 5
}

function meditation_profonde() {
    echo " Entrons dans une méditation profonde..."
    git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
}

# Message de bienvenue poétique
echo "\n$(tput setaf 6) Sonnet du Codespace $(tput sgr0)"
if [ -f ~/.poetry/sonnet.txt ]; then
    echo "\n$(tput setaf 5)$(cat ~/.poetry/sonnet.txt)$(tput sgr0)\n"
else
    echo "\n$(tput setaf 6)Dans l'univers du code, naît une lueur divine...$(tput sgr0)"
fi

echo "$(tput setaf 4)Pour commencer votre voyage :$(tput sgr0)"
echo "$(tput setaf 2)- poetry$(tput sgr0) : Entrer dans le sanctuaire du code"
echo "$(tput setaf 2)- harmonie$(tput sgr0) : Vérifier l'état de votre œuvre"
echo "$(tput setaf 2)- sublime$(tput sgr0) : Ouvrir votre éditeur en mode poétique"
echo "$(tput setaf 2)- vers 'message'$(tput sgr0) : Créer un commit élégant"
echo "$(tput setaf 2)- sonnet$(tput sgr0) : Déployer votre œuvre vers les nuages\n"

# Auto-completion
autoload -Uz compinit
compinit

# Key bindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

# Options ZSH
setopt AUTO_CD
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt HIST_SAVE_NO_DUPS
setopt INTERACTIVE_COMMENTS
setopt PROMPT_SUBST
