if has('vim_starting')
    set nocompatible               " Be iMproved
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
set runtimepath+=$GOROOT/misc/vim

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'flowtype/vim-flow', {'autoload':{'filetypes':['javascript']}}
Plug 'Valloric/YouCompleteMe'
Plug 'othree/yajs.vim', {'autoload':{'filetypes':['javascript']}}
Plug 'pangloss/vim-javascript'
" Initialize plugin system
call plug#end()

" Required:
filetype plugin indent on
syntax enable

if &term =~ "xterm-256color"
    set t_Co=256
    syntax enable 
endif

"" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" " Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" " Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
" vimにcoffeeファイルタイプを認識させる
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
" set indent level 
autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et

" Go
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview
autocmd FileType go autocmd BufWritePre <buffer> Fmt

set title
set autochdir
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set laststatus=2
set expandtab
set showcmd
set nobackup
set incsearch
set ignorecase
set smartcase
set autochdir

colorscheme badwolf

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }


