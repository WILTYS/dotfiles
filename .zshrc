# Oh My ZSH - "Dans l'univers du code, naît une lueur divine"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster" # Une thème plus élégant pour une "harmonie pure"

# Plugins - "Chaque alias s'inscrit comme une note en or"
plugins=(
    git
    node
    npm
    docker
    zsh-autosuggestions
    zsh-syntax-highlighting
    poetry # Pour la poésie du code
    sublime # Pour la sublimation
    history-substring-search
    colored-man-pages
)

source $ZSH/oh-my-zsh.sh

# Aliases Poétiques - "Où chaque commande se déploie, agile et sans trêve"
alias poetry="cd ~/trading && echo 'Dans l\'univers du code, naît une lueur divine'"
alias harmonie="git status && echo 'Commit gravé en vers, tel un serment éternel'"
alias sublime="code . && echo 'Harmonie numérique, chef-d\'œuvre sublimé'"

# Trading Aliases - "Déployant l'art du dev en un ballet solennel"
alias td="cd ~/trading && echo '🌟 Entrant dans le sanctuaire du trading'"
alias tdev="npm run dev && echo '✨ L\'art se déploie en harmonie'"
alias ttest="npm run test && echo '🎭 Les tests dansent leur ballet'"
alias tbuild="npm run build && echo '🏛️ L\'œuvre se construit en vers'"
alias tlint="npm run lint && echo '📜 Le code se purifie en rimes'"

# Environnement - "Ainsi, l'environnement devient poème exalté"
export POETRY_LEVEL=11
export TRADING_EXCELLENCE=11
export QUANTUM_PRECISION=0.99999

# Path avec élégance
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/trading/node_modules/.bin:$PATH"

# Message d'accueil poétique
echo "\n🌟 Bienvenue dans votre environnement sublime de trading"
echo "Où chaque ligne de code est un vers, chaque fonction une strophe"
echo "Et chaque commit, une œuvre d'art éternelle.\n"

# Prompt personnalisé avec une touche poétique
PROMPT='%{$fg[cyan]%}📜 %{$fg[white]%}%n%{$fg[magenta]%} dans %{$fg[blue]%}%~%{$fg[magenta]%} %{$reset_color%}
%{$fg[yellow]%}❯ %{$reset_color%}'

# Fonctions poétiques
function vers() {
    echo "Commit en cours de création..."
    git add .
    git commit -m "✨ $1"
    echo "Un nouveau vers s'inscrit dans l'histoire..."
}

function sonnet() {
    echo "🎭 Déploiement de l'œuvre..."
    git push
    echo "Le sonnet s'envole vers les nuages..."
}
