" Setup Vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle "gmarik/vundle"


" Vim improvements
Bundle "L9"
Bundle "Shougo/vimproc"
Bundle "tomtom/tlib_vim.git"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "kien/ctrlp.vim"
Bundle "rosenfeld/conque-term"
Bundle "vim-scripts/AnsiEsc.vim.git"
Bundle "vim-scripts/AutoTag.git"
Bundle "vim-scripts/lastpos.vim"
Bundle "vim-scripts/sudo.vim"
Bundle "xsunsmile/showmarks.git"
Bundle "vim-scripts/SearchComplete"
Bundle "YankRing.vim"
Bundle "sjl/gundo.vim"
Bundle "scrooloose/syntastic"
Bundle "tpope/vim-repeat.git"
Bundle "rking/ag.vim"
Bundle "majutsushi/tagbar"
Bundle "wincent/Command-T"
Bundle "scrooloose/nerdtree"
Bundle "jistr/vim-nerdtree-tabs"
Bundle "FuzzyFinder"
Bundle "a.vim"
Bundle "Twinside/vim-codeoverview"


" Cosmetics
Bundle "Colour-Sampler-Pack"
Bundle "Lokaltog/powerline", {"rtp": "powerline/bindings/vim/"}
Bundle "chrisbra/color_highlight"
Bundle "altercation/vim-colors-solarized"
Bundle "vim-scripts/TagHighlight.git"


" Text editing improvements
Bundle "Shougo/neocomplcache"
Bundle "godlygeek/tabular"
Bundle "nelstrom/vim-visual-star-search"
Bundle "searchfold.vim"
Bundle "scratch.vim"
Bundle "Lokaltog/vim-easymotion"
Bundle "matchit.zip"
Bundle "henrik/vim-indexed-search"
Bundle "AndrewRadev/splitjoin.vim"


" Text objects
Bundle "austintaylor/vim-indentobject"
Bundle "coderifous/textobj-word-column.vim"
Bundle "kana/vim-textobj-datetime"
Bundle "kana/vim-textobj-entire"
Bundle "kana/vim-textobj-function"
Bundle "kana/vim-textobj-user"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "thinca/vim-textobj-function-javascript"
Bundle "vim-scripts/argtextobj.vim"


" Version control systems
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-git"
Bundle "gregsexton/gitv"
Bundle "tjennings/git-grep-vim"
Bundle "airblade/vim-gitgutter"
Bundle "ccase.vim"


" Python
Bundle "klen/python-mode"


" TTCN
Bundle "ttcn-syntax"
Bundle "ttcn-indent"
Bundle "ttcn-dict"
Bundle "ttcn-ftplugin"


" Web development
Bundle "tristen/vim-sparkup"
Bundle "pangloss/vim-javascript"
Bundle "itspriddle/vim-jquery"
Bundle "groenewege/vim-less"
Bundle "tpope/vim-ragtag"


" Scala
Bundle "derekwyatt/vim-scala"


" Haskell
Bundle "bitc/vim-hdevtools"
Bundle "lukerandall/haskellmode-vim"
Bundle "eagletmt/ghcmod-vim"
Bundle "ujihisa/neco-ghc"
Bundle "Twinside/vim-hoogle"
Bundle "frerich/unicode-haskell"
Bundle "bitc/lushtags"


" Shell scripting
Bundle "bash-support.vim"


" Code browsing and completion
Bundle "CCTree"
Bundle "chazy/cscope_maps"
Bundle "Rip-Rip/clang_complete"


" Utilities
Bundle "rkitover/vimpager"
