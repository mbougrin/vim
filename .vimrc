"Enable Omni Plugin
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"Print Number Line into Vim
set number

"File ignored with autocompletion
set wildignore=*.o,*.swp,*.swo

" show command in bottom bar
set showcmd

" highlight current line
set cursorline

"Active Mouse into Vim
set mouse=a

"Active Color Vim
syntax on

"by default Vim saves your last 8 commands.  We can handle more
set history=42

" Turn on syntax highlighting"
syntax enable

"Add Backspace for use Backspace into Vim
set backspace=2

"Don't bother throttling tty
set ttyfast

"Start Autoindent
set autoindent

"Activate indentation
filetype off
filetype plugin indent on
set smartindent

"Color Theme
colorscheme monokai

"Real-world encoding
set encoding=utf-8

"More useful backspace behavior
set backspace=indent,eol,start

"Max Char In a Line
"set textwidth=80

"Not a Cut a Word in end Line
set linebreak

"To highlight all search matches
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch

"Navigate All File Prev and Next
nnoremap <S-q> :prev<Esc>
nnoremap <S-e> :n<Esc>
vnoremap <S-q> :prev<Esc>
vnoremap <S-e> :n<Esc>

"Move Custom Congig Navigation Vim
nnoremap <Down> j
nnoremap <Up> k
nnoremap <Right> l
nnoremap <Left> h
vnoremap <Down> j
vnoremap <Up> k
vnoremap <Right> l
vnoremap <Left> h

"Auto Close And Move left
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap < <><Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap [ []<Left>
inoremap < <><Left>

"New Tab
nnoremap <C-n> :tabnew<CR>
vnoremap <C-n> :tabnew<CR>

"Open File In New Tab
nnoremap <S-n> :Te<CR>
vnoremap <S-n> :Te<CR>

"Close Tab
nnoremap <S-w> :tabclose<CR>
vnoremap <S-w> :tabclose<CR>

"Quit
nnoremap <C-q> :q<CR>
vnoremap <C-q> :q<CR>

"Tab equal 4 space
set tabstop=4
set shiftwidth=4
set noexpandtab

"Disable vi-compatibility
set nocompatible

"Use statusbar on all windows
set laststatus=2

" Allow us to use Ctrl-s and Ctrl-q as keybinds FIXBUG FREEZE TTY
silent !stty -ixon
" Restore default behaviour when leaving Vim. FIXBUG FREEZE TTY
autocmd VimLeave * silent !stty ixon
"Save With Ctrl-S
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>
vmap <c-s> <Esc>:w<CR>

"Switch .h File Ctrl-h
function! OpenOther( )
        if expand( "%:e") == "c"
                exe "split" expand( "%:p:r:s?src?include?").".h"
        elseif expand( "%:e") == "h"
                exe "split" expand( "%:p:r:s?include?src?").".c"
        endif
endfunction

nmap <c-h> :call OpenOther( )<CR>


"Switch Right tab
nnoremap <tab>  :tabnext<CR>
vnoremap <tab>  :tabnext<CR>

"Switch left tab
nnoremap <S-tab>  :tabprev<CR>
vnoremap <S-tab>  :tabprev<CR>

"Shortcurt Commentary Custom Normal Mode
nmap <C-p> :s/^/\/\//<CR>:nohlsearch<CR>
nmap <S-p> :s/\/\///<CR>

"Shortcurt Commentary Custom Visual Mode
vmap <C-p> :s/^/\/\//<CR>:nohlsearch<CR>
vmap <S-p> :s/\/\///<CR>

"Auto Indent All File
nmap <C-g> G=gg
"Bind Search Shortcut Ctrl-f
nmap <C-f> :/
"Clear Search Ctrl-l
nmap <C-l> :nohlsearch<CR>
"Custom Paste Cut Copy
nmap <C-c> yy
nmap <C-x> dd
nmap <C-v> kp

"Move Tab
nnoremap <F1> 1gt
nnoremap <F2> 2gt
nnoremap <F3> 3gt
nnoremap <F4> 4gt
nnoremap <F5> 5gt
vnoremap <F1> 1gt
vnoremap <F2> 2gt
vnoremap <F3> 3gt
vnoremap <F4> 4gt
vnoremap <F5> 5gt

