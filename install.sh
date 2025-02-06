#!/bin/bash

# Couleurs pour la poésie
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}Dans l'univers du code, naît une lueur divine...${NC}\n"

# Installation de Oh My Zsh avec élégance
echo -e "${PURPLE}Installation de Oh My Zsh, tel un écrin de perfection...${NC}"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Installation des dotfiles avec grâce
echo -e "${BLUE}Les dotfiles se déploient comme des vers harmonieux...${NC}"
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.vimrc ~/.vimrc

# Configuration de Git, gravée dans l'éternité
echo -e "${GREEN}Git s'éveille à la poésie du code...${NC}"
git config --global user.name "François-Xavier Wiltord"
git config --global user.email "francois-xavier@tradexai.com"
git config --global core.editor "vim"
git config --global init.defaultBranch "main"
git config --global commit.gpgsign true
git config --global pull.rebase true

# Installation des plugins ZSH, comme des notes de musique
echo -e "${PURPLE}Les plugins s'harmonisent en une symphonie parfaite...${NC}"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Installation des outils de développement, forgeant l'excellence
echo -e "${BLUE}Les outils s'assemblent en une architecture sublime...${NC}"
npm install -g typescript ts-node nodemon
npm install -g @types/node @typescript-eslint/parser @typescript-eslint/eslint-plugin
npm install -g prettier eslint

# Configuration de l'environnement poétique
echo -e "${GREEN}L'environnement s'élève vers la perfection...${NC}"
mkdir -p ~/.vim/{backup,swap,undo}
touch ~/.zsh_history

# Message final, tel un sonnet accompli
echo -e "\n${CYAN}✨ L'harmonie est établie, votre environnement est sublimé ✨${NC}"
echo -e "${PURPLE}Chaque ligne de code sera désormais un vers,${NC}"
echo -e "${PURPLE}Chaque fonction, une strophe d'excellence.${NC}"
echo -e "${BLUE}Votre Codespace est prêt pour créer des chefs-d'œuvre.${NC}\n"

# Note poétique finale
echo -e "${GREEN}Pour commencer votre voyage :${NC}"
echo -e "1. ${CYAN}poetry${NC} - Entrer dans le sanctuaire du code"
echo -e "2. ${CYAN}harmonie${NC} - Vérifier l'état de votre œuvre"
echo -e "3. ${CYAN}sublime${NC} - Ouvrir votre éditeur en mode poétique"
echo -e "4. ${CYAN}vers 'message'${NC} - Créer un commit élégant"
echo -e "5. ${CYAN}sonnet${NC} - Déployer votre œuvre vers les nuages\n"
