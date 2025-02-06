" Configuration Vim Poétique - "Vim révèle ses secrets, d'une plume si sûre"

" Paramètres fondamentaux - "Dans l'univers du code, naît une lueur divine"
set nocompatible
set encoding=utf-8
set number
set ruler
set cursorline      " Souligne la ligne courante avec élégance
set colorcolumn=88  " Une colonne poétique à 88 caractères
set signcolumn=yes  " Affiche la colonne des signes avec grâce

" Esthétique sublime - "Harmonie numérique, chef-d'œuvre sublimé"
syntax enable
set background=dark
set termguicolors
set list
set listchars=tab:»·,trail:·,nbsp:·
set scrolloff=11    " Garde 11 lignes visibles autour du curseur

" Indentation poétique - "Chaque alias s'inscrit comme une note en or"
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Recherche élégante - "Pour un Codespace éclatant"
set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch
set gdefault        " Substitutions globales par défaut

" Performance divine - "Un environnement fort"
set lazyredraw
set updatetime=300
set hidden
set history=1100    " 1100 commandes en mémoire (11 * 100)
set undolevels=1100

" Mappings poétiques - "Où chaque commande se déploie, agile et sans trêve"
let mapleader = ","
" Navigation entre les fenêtres avec Alt + hjkl
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Raccourcis sublimes
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>p :set paste!<CR>
nnoremap <leader>n :set number!<CR>

" Auto-complétion céleste
set completeopt=menuone,noinsert,noselect
set shortmess+=c
set pumheight=11    " Limite la hauteur du menu à 11 lignes

" Status line poétique - "Déployant l'art du dev en un ballet solennel"
set laststatus=2
set statusline=%F%m%r%h%w
set statusline+=\ [FORMAT=%{&ff}]
set statusline+=\ [TYPE=%Y]
set statusline+=\ [ASCII=\%03.3b]
set statusline+=\ [HEX=\%02.2B]
set statusline+=\ [POS=%04l,%04v]
set statusline+=\ [%p%%]
set statusline+=\ [LEN=%L]

" Pliage du code en strophes
set foldmethod=indent
set foldlevel=11
set foldnestmax=11

" Messages poétiques
set shortmess+=I    " Pas de message d'accueil
let g:netrw_banner = 0  " Pas de bannière dans l'explorateur
set confirm         " Demande confirmation avec élégance

" Thème personnalisé - "L'âme se fait manifeste"
highlight CursorLine ctermbg=236 guibg=#2d2d2d
highlight ColorColumn ctermbg=236 guibg=#2d2d2d
highlight LineNr ctermfg=grey guifg=#aaaaaa
highlight CursorLineNr ctermfg=yellow guifg=#ffff00

" Fonctions poétiques
function! VersPerfection()
    let l:vers = system('date +"%Y-%m-%d %H:%M:%S"')
    call append(line('.'), '/* ' . l:vers . ' - Un nouveau vers s\'inscrit */')
endfunction

" Commandes personnalisées
command! Vers call VersPerfection()
command! Sonnet wa
