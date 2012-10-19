call pathogen#infect()

syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Make the backspace key behave normally
set backspace=indent,eol,start

" Set the colorscheme to solarized dark
set background=dark
colorscheme solarized

" Use the below highlight group when displaying bad whitespace.
highlight BadWhitespace ctermbg=red guibg=red

" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile * match BadWhitespace /\s\+$/

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw 2match BadWhitespace /^\t\+/
