"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║██╔████╔██║██████╔╝██║
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



set number
set relativenumber
set mouse=a
set autoindent
set smartindent
set tabstop=4 shiftwidth=4 "expandtab
set title

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

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'maxboisvert/vim-simple-complete'
Plug 'BrandonRoehl/auto-omni'
Plug 'LunarWatcher/auto-pairs'

call plug#end()

let g:AutoPairsShortcutToggle = '<C-P>'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1
let g:airline_theme = 'catppuccin_mocha'

" Set Colorscheme to Atom-Dark-2q56
" colorscheme atom-dark-256
set termguicolors
colorscheme catppuccin_mocha
