" Don't emulate vi's limitations
set nocompatible


" Load vundle
if filereadable(expand("~/.vim/vundle.vim"))
    source ~/.vim/vundle.vim
endif


" Load general configuration
if filereadable(expand("~/.vim/general.vim"))
    source ~/.vim/general.vim
endif


" Code completion
if filereadable(expand("~/.vim/completion.vim"))
    source ~/.vim/completion.vim
endif


" Configure indentation
set autoindent
set smartindent
set smarttab
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab


" Text formatting options
set textwidth=80
set formatoptions=tcroqnl
if (v:version >= 703 && has('patch541'))
    set formatoptions+=j
endif
set linebreak
let &showbreak = "↪ "


" Configure folding
set foldmethod=indent
set foldnestmax=3
set nofoldenable
set fillchars=fold:\


" Spell checking
if (v:version >= 700)
    set spelllang=en_us
endif


" Text width marker
if (v:version >= 703)
    set colorcolumn+=1
    highlight ColorColumn ctermbg=237 guibg=#363946
endif


" Python mode
let g:pymode_rope = 1
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_folding = 0


" Set the colorscheme to solarized dark
set background=dark
let g:solarized_termcolors=256
let g:solarized_visibility="high"
let g:solarized_contrast="high"
let g:solarized_termtrans=1
colorscheme solarized


" Whitespace
if (&termencoding == "utf-8") || has("gui_running")
    if (v:version >= 700)
        set list listchars=tab:»·,trail:·,extends:…,nbsp:‗
    else
        set list listchars=tab:»·,trail:·,extends:…
    endif
else
    if (v:version >= 700)
        set list listchars=tab:>-,trail:.,extends:>,nbsp:_
    else
        set list listchars=tab:>-,trail:.,extends:>
    endif
endif

highlight BadWhitespace ctermbg=red guibg=red                   " Highlight group
au BufRead,BufNewFile * match BadWhitespace /\s\+$/             " Flag trailing whitespace as bad
au BufRead,BufNewFile *.py,*.pyw 2match BadWhitespace /^\t\+/   " Flag tabs at beginning of line in Python mode as bad


if has("digraph")
    digraph ., 8230
endif


if !has("unix")
    set viminfo+=n$HOME/.viminfo
endif


" Configure airline
let g:airline_powerline_fonts = 1


" Configure yankring
let g:yankring_history_dir = '~/.vim.cache/'


" Configure FuzzyFinder
let g:fuf_dataDir = '~/.vim.cache/fuf/'


" Haskell configuration
let g:necoghc_enable_detailed_browse = 1


" Load keybindings
if filereadable(expand("~/.vim/bindings.vim"))
    source ~/.vim/bindings.vim
endif


" Look for local configuration
let s:per_host_configuration = expand("~/.vimrc.local")
if filereadable(s:per_host_configuration)
    execute ":source " . s:per_host_configuration
endif
