" File settings
filetype plugin indent on
set encoding=utf8
set eol

" trigger `autoread` when files changes on disk
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" notification after file change
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" Indetation settings
set expandtab
set shiftwidth=2
set tabstop=2

set showcmd

" Code folding settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
set softtabstop=2

" Display line numbers on the left
set number

" Sets directory automatically
" set autochdir

" Make .swp files go in /tmp
set directory=/tmp//

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

set mouse=a

" Map buffer navigation commands
nmap gn :bn<cr>
nmap gp :bp<cr>
nnoremap <leader>w :bp<cr>:bd #<cr>

" make search clear by double escape
nnoremap <esc><esc> :noh<return>

set scrolloff=4
