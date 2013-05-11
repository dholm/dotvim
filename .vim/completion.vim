" Setup wildmenu (for completion)
set wildmode=list:longest,full
set wildmenu
set wildignore=*.o,*~
set wildignore+=*cache*
set wildignore+=*DS_Store*
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.jpeg,*.gif


" Code tags
autocmd syntax c syn keyword cTodo contained TODO
autocmd syntax * syn keyword hNote contained NOTE | hi def link hNote Note
autocmd syntax * syn keyword hHack contained HACK | hi def link hHack Hack


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



