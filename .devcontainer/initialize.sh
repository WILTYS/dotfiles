#!/bin/bash

# Couleurs pour la poésie
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}Initialisation de votre sanctuaire de code...${NC}\n"

# Installation des dépendances Python
echo -e "${PURPLE}Installation des outils Python...${NC}"
pip install poetry black pylint mypy pytest pytest-cov

# Configuration de Poetry
echo -e "${BLUE}Configuration de Poetry...${NC}"
poetry config virtualenvs.in-project true

# Installation de Node.js global packages
echo -e "${GREEN}Installation des outils Node.js...${NC}"
npm install -g typescript ts-node nodemon
npm install -g @types/node @typescript-eslint/parser @typescript-eslint/eslint-plugin
npm install -g prettier eslint

# Configuration de Git
echo -e "${PURPLE}Configuration de Git...${NC}"
git config --global init.defaultBranch main
git config --global pull.rebase true
git config --global core.editor vim

# Installation des extensions VS Code
echo -e "${BLUE}Installation des extensions VS Code...${NC}"
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-python.black-formatter
code --install-extension ms-azuretools.vscode-docker
code --install-extension GitHub.copilot
code --install-extension GitHub.copilot-chat
code --install-extension eamodio.gitlens
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension yzhang.markdown-all-in-one
code --install-extension esbenp.prettier-vscode
code --install-extension vscodevim.vim

# Configuration des répertoires
echo -e "${GREEN}Création des répertoires de travail...${NC}"
mkdir -p ~/trading/{src,tests,docs,scripts,data}
mkdir -p ~/.vim/{backup,swap,undo}
mkdir -p ~/.config/git

# Message final
echo -e "\n${CYAN}✨ Votre environnement est prêt pour la création !${NC}"
echo -e "${PURPLE}Que chaque ligne de code soit un vers,${NC}"
echo -e "${PURPLE}Chaque fonction, une strophe d'excellence.${NC}"
echo -e "${BLUE}Votre Codespace est prêt pour l'art du développement.${NC}\n"

# Commandes disponibles
echo -e "${GREEN}Commandes poétiques disponibles :${NC}"
echo -e "1. ${CYAN}poetry${NC} - Entrer dans le sanctuaire du code"
echo -e "2. ${CYAN}harmonie${NC} - Vérifier l'état de votre œuvre"
echo -e "3. ${CYAN}sublime${NC} - Ouvrir votre éditeur en mode poétique"
echo -e "4. ${CYAN}vers 'message'${NC} - Créer un commit élégant"
echo -e "5. ${CYAN}sonnet${NC} - Déployer votre œuvre vers les nuages"
echo -e "6. ${CYAN}meditation${NC} - Explorer l'historique des commits"
echo -e "7. ${CYAN}harmonie_complete${NC} - Analyse approfondie du projet\n"
