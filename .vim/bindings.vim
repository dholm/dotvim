" NERDtree
nmap <F2> :NERDTreeToggle<CR>


" Tagbar
Bundle "majutsushi/tagbar"
nmap <F8> :TagbarToggle<CR>


" Indentation with tab
vmap <silent> <tab> >gv
vmap <silent> <s-tab> <gv


" Paging with space
nmap <silent> <space> <C-f>


" Improved K behaviour
vmap K k
nmap K K<CR>


" Keybindings for Haskell
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

