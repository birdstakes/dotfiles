" enable autoindent, syntax highlighting, and filetype plugins
filetype indent plugin on
syntax on
set autoindent

" enable mouse
set mouse=a

" disable intro message
set shortmess+=I

" allow switching away from unsaved buffers
set hidden

" nice command-line completion
set wildmenu

" show partially typed commands
set showcmd

" highlight next search match as the command is being typed
" ignore case when the pattern is lowercase
" CTRL-L in normal mode to toggle highlighting of all matches
set incsearch
set ignorecase
set smartcase
nnoremap <C-L> :set hlsearch!<CR><C-L>

" allow backspacing/CTRL-Wing over everything
set backspace=indent,eol,start

" stay in the same column when jumping around
set nostartofline

" show cursor position
set ruler

" show status line even if there is only one window
set laststatus=2

" disable bell
set visualbell
set t_vb=

" absolute line number on current line, relative line numbers everywhere else
set number
set relativenumber

" 4 space autoindent step size
set shiftwidth=4
" pressing tab inserts 4 spaces
set softtabstop=4
" tab characters are shown as 8 spaces
set tabstop=8
" insert spaces instead of tabs
set expandtab

" get rid of annoying delay after pressing escape
set ttimeoutlen=0

" search for tags in the directory of the file being edited
" if not found, search parent directories
set tags=./tags;

" colorscheme
" don't clear with terminal background color
" https://sunaku.github.io/vim-256color-bce.html
silent! colorscheme afterglow
set t_ut=

" try to save and run current file
if exists("$TMUX")
    nnoremap <F5> <Esc>:w<Esc>:!tmux kill-pane -a && tmux split-window -h '"%:p";read'<CR><CR>
else
    nnoremap <F5> <Esc>:w<Esc>:!'%:p'<CR>
endif
imap <F5> <Esc><F5>
