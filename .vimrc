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
set linebreak
set ignorecase
set smartcase
set showcmd
setlocal spell spelllang=en_us



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
Plug 'dense-analysis/ale'
Plug 'gosukiwi/vim-atom-dark'

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
" let g:airline_theme = 'catppuccin_macchiato'
let g:airline_theme = 'term'

let g:cool_total_matches = 1
let g:pickachu_default_color_format = "rgba"

" Set Colorscheme to Atom-Dark-2q56
colorscheme atom-dark-256
set termguicolors
" colorscheme catppuccin_mocha

" Function to print OUTPUT in BIG ASCII Characters in terminal 
function! Output_echo() 
    :!clear;echo -e "\n ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗\n██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝\n██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   \n██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   \n╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   \n ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   \n------------------------------------------------------\n";
endfunction

let mapleader = ","
" Mapping <leader> key to Run Codes of Different Languages

" nnoremap <F5> :call Output_echo() python3 %<cr>

" Mapping <F5> to Command Which will run the current Python File (Without Saving)
nnoremap <F5> :!clear;echo -e "\n ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗\n██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝\n██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   \n██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   \n╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   \n ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   \n------------------------------------------------------\n";python3 "%"<cr>


" Mapping <leader> + <F5> to Command Which will run the current Python File (Without Saving)
nnoremap ,<F5> :w<cr> :!clear;echo -e "\n ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗\n██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝\n██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   \n██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   \n╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   \n ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   \n------------------------------------------------------\n";python3 "%"<cr>

nnoremap <S-F5> :w<cr> :!clear;echo -e "\n ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗\n██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝\n██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   \n██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   \n╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   \n ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   \n------------------------------------------------------\n";python3 "%"<cr>

" Mapping <F6> to Command Which will run the current C File (Without Saving)
nnoremap <F6> :!clear;echo -e "\n ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗\n██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝\n██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   \n██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   \n╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   \n ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   \n------------------------------------------------------\n";gcc "%" && ./a.out <cr>

" Mapping <leader> + <F6> to Command Which will run the current C File (With Saving)
nnoremap ,<F6> :w<cr> :!clear;echo -e "\n ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗\n██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝\n██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   \n██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   \n╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   \n ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   \n------------------------------------------------------\n";gcc "%" && ./a.out <cr>

" Mapping Shift + <F6> to Command Which will run the current C File (With Saving)
nnoremap <S-F6> :w<cr> :!clear;echo -e "\n ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗\n██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝\n██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   \n██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   \n╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   \n ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   \n------------------------------------------------------\n";gcc "%" && ./a.out <cr>

" PHP
nnoremap ,p :w<cr>:!clear;echo -e "\n ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗\n██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝\n██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   \n██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   \n╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   \n ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   \n------------------------------------------------------\n";php "%"<cr>
nnoremap ,P :w<cr>:!clear;echo -e "\n ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗\n██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝\n██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   \n██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   \n╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   \n ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   \n------------------------------------------------------\n";sudo php -S localhost:125 "%"<cr>

" JAVA
nnoremap ,j :w<cr>:!clear;clear;echo -e "\n ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗\n██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝\n██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   \n██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   \n╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   \n ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   \n------------------------------------------------------\n";javac "%" && java "%:t:r"<cr>

" Special Abbreviation to Expand xcls-auto
" abbreviate xcls-auto <C-R>=expand('%:t:r')<CR>


"-------------------------------
" All nnoremap are listed below
"-------------------------------

" Mapping Ctrl + n , Ctrl + p to Swapping Tabs in Normal Mode
nnoremap <C-n> :tabn<cr>
nnoremap <C-p> :tabprevious<cr>

" nmap <silent> <C-e> <Plug>(ale_next_wrap)
nmap ,e <Plug>(ale_next_wrap)
nmap ,E <Plug>(ale_previous_wrap)

" Mapping <F3> to NERDTreeToggle
nnoremap <F3> :NERDTreeToggle<cr><c-w>=<cr>

" Mapping <F4> Terminal in vim
nnoremap <F4> :terminal<cr>

" Mapping Ctrl + <Arrow Keys> to Swapping Panes in Normal Mode
nnoremap <C-Up> <c-w>k
nnoremap <C-Down> <c-w>j
nnoremap <C-Left> <c-w>h
nnoremap <C-Right> <c-w>l
nnoremap ,s :set nospell<cr>
nnoremap ,S :setlocal spell spelllang=en_us<cr>

" Mapping <leader> + <F12> to Source "~/.vimrc" 
nnoremap ,<F12> :source ~/.vimrc<cr>
