"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                             ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"                             ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"                             ██║   ██║██║██╔████╔██║██████╔╝██║     
"                             ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                          ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                          ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                DARK WITH SHADOW- ASCII ART
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set relativenumber
set mouse=a
set autoindent
set smartindent
set tabstop=4 shiftwidth=4 "expandtab
set title
set incsearch
set hlsearch

filetype plugin on
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

set omnifunc=syntaxcomplete#Complete

" Enable omni completion per file.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

set completeopt=noinsert,menuone

" Enable packloadall for pack plugins.
packloadall

" Install vim-plug by running following command in your terminal
" curl -s -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'maxboisvert/vim-simple-complete'
Plug 'BrandonRoehl/auto-omni'
Plug 'LunarWatcher/auto-pairs'
Plug 'vim-autoformat/vim-autoformat'
Plug 'romainl/vim-cool'
Plug 'DougBeney/pickachu'

call plug#end()


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" enable line numbers in NERDTree
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
let g:AutoPairsShortcutToggle = '<M-P>'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'catppuccin_macchiato'
let g:cool_total_matches = 1
let g:pickachu_default_color_format = "rgba"

" Set Colorscheme to Atom-Dark-2q56
" colorscheme atom-dark-256
set termguicolors
colorscheme catppuccin_mocha
