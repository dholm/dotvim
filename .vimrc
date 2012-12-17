scriptencoding utf-8

call pathogen#infect()
call pathogen#helptags()

if ((&term =~ "xterm") || (&term =~ "rxvt")) && (&termencoding == "")
    set termencoding=utf-8
endif

" Don't emulate vi's limitations
set nocompatible

set encoding=utf-8

set tabstop=8
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent
set smartindent

" Make the backspace key behave normally
set backspace=indent,eol,start

" Setup search options
set incsearch
set hlsearch
set ignorecase
set smartcase
set infercase
autocmd CursorHold,CursorHoldI * nohls | redraw
nnoremap <CR> :noh<CR><CR>

" Setup wildmenu (for completion)
set wildmenu
set wildmode=longest,full
set wildignore=*.o,*~

" Setup options for scrolling
set scrolloff=2
set sidescrolloff=2
set nostartofline

" Configures buffer switching
set hidden
set autowrite

" Text formatting options
set textwidth=80
set formatoptions=tcroqnl
if (v:version >= 703 && has('patch541'))
    set formatoptions+=j
endif
set linebreak
let &showbreak = "↪ "

" Configure options for visual block mode
set virtualedit=block

" Improve drawing speed
set lazyredraw
set ttyfast


" Syntax highlighting
syntax on
syntax sync fromstart


" Filetypes
filetype on
filetype indent on
filetype plugin on


" Code tags
autocmd syntax c syn keyword cTodo contained TODO
autocmd syntax * syn keyword hNote contained NOTE | hi def link hNote Note
autocmd syntax * syn keyword hHack contained HACK | hi def link hHack Hack


" Handle trailing whitespace
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


" Status line
set laststatus=2
set shortmess=aItT
set statusline=Editing:\ %r%t%m\ %=Location:\ Line\ %l/%L\ \ Col:\ %v\ (%p%%)


" Spell checking
if (v:version >= 700)
    set spelllang=en_us
endif


" Code folding
set fillchars=fold:\


" Code indexing
set tags=tags;/
set showfulltag
set tagrelative

if has("cscope")
    set cscopetag
    set cscopetagorder=1

    set nocscopeverbose
    if filereadable("cscope.out")
        cscope add cscope.out
    endif
    set cscopeverbose

    " c -> calls ; d -> definition ; f -> file ; r -> references
    nmap <leader>cc :cscope find c <C-R>=expand("<cword>")<CR><CR>
    nmap <leader>cf :cscope find f <C-R>=expand("<cword>")<CR><CR>
    nmap <leader>cd :cscope find g <C-R>=expand("<cword>")<CR><CR>
    nmap <leader>cr :cscope find s <C-R>=expand("<cword>")<CR><CR>
endif


" Text width marker
if (v:version >= 703)
    set colorcolumn+=1
    highlight ColorColumn ctermbg=237 guibg=#363946
endif


" Key mappings
nmap <F8> :TagbarToggle<CR>

" Indentation with tab
vmap <silent> <tab> >gv
vmap <silent> <s-tab> <gv

" Paging with space
nmap <silent> <space> <C-f>

" Improved K behaviour
vmap K k
nmap K K<CR>

" Set the colorscheme to solarized dark
set background=dark
let g:solarized_termcolors=256
let g:solarized_visibility="high"
let g:solarized_contrast="high"
colorscheme solarized


" Use the below highlight group when displaying bad whitespace.
highlight BadWhitespace ctermbg=red guibg=red

" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile * match BadWhitespace /\s\+$/

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw 2match BadWhitespace /^\t\+/


if has("digraph")
    digraph ., 8230
endif

if !has("unix")
    set viminfo+=n$HOME/.viminfo
endif


" Look for local configuration
let s:per_host_configuration = expand("~/.vimrc.local")
if filereadable(s:per_host_configuration)
    execute ":source " . s:per_host_configuration
endif
