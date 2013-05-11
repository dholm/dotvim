" Set default encoding to UTF-8
scriptencoding utf-8
if ((&term =~ "xterm") || (&term =~ "rxvt")) && (&termencoding == "")
    set termencoding=utf-8
endif
set encoding=utf-8


" Noiseless
set visualbell


" Increase command line history
set history=1000


" Make the backspace key behave normally
set backspace=indent,eol,start


" Status line
set laststatus=2
set shortmess=aItT
set showmode            " Show the current mode in the status bar
set showcmd             " Show incomplete commands in the status bar


" Reload modified files
set autoread


" Disable swapfile
set noswapfile
set nobackup
set nowb


" Keep undo history between sessions
silent !mkdir ~/.vim.cache >/dev/null 2>&1
set undodir=~/.vim.cache
set undofile


" Setup search options
set incsearch
set hlsearch
set ignorecase
set smartcase
set infercase
autocmd CursorHold,CursorHoldI * nohls | redraw
nnoremap <CR> :noh<CR><CR>


" Setup options for scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set nostartofline


" Configures buffer switching
set hidden
set autowrite


" Configure options for visual block mode
set virtualedit=block


" Improve drawing speed
set lazyredraw
set ttyfast


" Syntax highlighting
syntax on
syntax sync fromstart


" Filetypes
filetype indent on
filetype plugin on
