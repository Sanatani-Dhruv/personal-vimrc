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
" setlocal spell spelllang=en_us


filetype plugin on
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

set omnifunc=syntaxcomplete#Complete

" Enable omni completion per file.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType html setlocal filetype=php
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

set completeopt=noinsert,menuone

" Enable packloadall for pack plugins.
packloadall

" Install vim-plug by running following command in your terminal
" curl -s -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

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
Plug 'romainl/vim-cool'
Plug 'DougBeney/pickachu'
Plug 'dense-analysis/ale'
Plug 'gosukiwi/vim-atom-dark'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/SyntaxComplete'
Plug 'vim-scripts/dbext.vim'

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

" Give Visual Feedback when tagalong change tags
let g:tagalong_verbose = 1

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
nnoremap ,j :w<cr>:!clear;clear;echo -e "\n ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗\n██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝\n██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   \n██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   \n╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   \n ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   \n------------------------------------------------------\n";touch TeSt_tEsT_TOSTER.class;rm -r *.class ;javac "%" && java "%:t:r"<cr>

nnoremap ,aj :w<cr>:!clear;clear;echo -e "\n ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗\n██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝\n██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   \n██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   \n╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   \n ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   \n------------------------------------------------------\n";touch TeSt_tEsT_TOSTER.class;rm -r *.class ;javac "%" && java "%:t:r" 

" JAVA
nnoremap ,J :w<cr>:!clear;clear;echo -e "\n ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗\n██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝\n██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   \n██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   \n╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   \n ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   \n------------------------------------------------------\n";touch TeSt_tEsT_TOSTER.class;rm -r *.class ;javac *.java && java "%:t:r"<cr>


nnoremap ,aJ :w<cr>:!clear;clear;echo -e "\n ██████╗ ██╗   ██╗████████╗██████╗ ██╗   ██╗████████╗\n██╔═══██╗██║   ██║╚══██╔══╝██╔══██╗██║   ██║╚══██╔══╝\n██║   ██║██║   ██║   ██║   ██████╔╝██║   ██║   ██║   \n██║   ██║██║   ██║   ██║   ██╔═══╝ ██║   ██║   ██║   \n╚██████╔╝╚██████╔╝   ██║   ██║     ╚██████╔╝   ██║   \n ╚═════╝  ╚═════╝    ╚═╝   ╚═╝      ╚═════╝    ╚═╝   \n------------------------------------------------------\n";touch TeSt_tEsT_TOSTER.class;rm -r *.class ;javac *.java && java "%:t:r" 

" Special Abbreviation to Expand xcls-auto
" abbreviate xcls-auto <C-R>=expand('%:t:r')<CR>


"-------------------------------
" All nnoremap are listed below
"-------------------------------

" Mapping Ctrl + n , Ctrl + p to Swapping Tabs in Normal Mode
nnoremap <C-n> :tabn<cr>
" nnoremap <C-p> :tabprevious<cr>

" nmap <silent> <C-e> <Plug>(ale_next_wrap)
nnoremap ,e <Plug>(ale_next_wrap)
nnoremap ,E <Plug>(ale_previous_wrap)

" Save all file with <leader> + <space>
nnoremap ,<space> :wa<cr>

" --------------------------------------------------
"                    ALE config
"                   ------------
" You Should Install Linters Manually,
"
" Like python3-mypy, python3-bandit python3-pylint for python
"
" For Debian Based Systems :
" sudo apt install python3-mypy python3-bandit python3-pylint*
"
" For Termux :
" pkg install python3-mypy python3-bandit python3-pylint*
" --------------------------------------------------
" let g:ale_linters = {'python': ['flake8', 'pylint', 'bandit', 'mypy', 'pycodestyle'], 'shell': ['shellcheck']} 
" let g:ale_linters = {'python': ['flake8', 'pylint', 'pycodestyle'], 'shell': ['shellcheck']} 
" let g:syntastic_python_pylint_args = '-E'
" let g:ale_python_pylint_options = '--rcfile '.expand('~/.vim/.pylintrc')

let g:syntastic_quiet_messages = {
			\ "!level":  "errors",
			\ "type":    "style",
			\ "regex":   '.*',
			\ "file:p":  '.*' }

" Mapping <F3> and <F2> to NERDTreeToggle
nnoremap <F3> :NERDTreeToggle<cr><c-w>=<cr>
nnoremap <F2> :NERDTreeToggle<cr><c-w>=<cr>

" Mapping <F4> Terminal in vim
nnoremap <F4> :terminal<cr>

" Mapping Ctrl + <Arrow Keys> to Swapping Panes in Normal Mode
nnoremap <C-Up> <c-w>k
nnoremap <C-Down> <c-w>j
nnoremap <C-Left> <c-w>h
nnoremap <C-Right> <c-w>l
nnoremap ,S :set nospell<cr>
nnoremap ,s :setlocal spell spelllang=en_us<cr>

" Mapping <leader> + <F12> to Source "~/.vimrc" 
nnoremap ,<F12> :source ~/.vimrc<cr>

" nnoremap ,H :!live-server % --no-browser<cr>
" nnoremap ,h :!live-server . --no-browser<cr>
nmap ,h :StartLiveServer <cr>
nmap ,k :KillLiveServer <cr>


" Failed Miserably while creating command to auto  .vimrc name in java
" autocmd FileType java inoremap xls <esc>diW<esc>"%p<space>a


" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<S-Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
