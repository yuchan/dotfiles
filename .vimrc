if has('vim_starting')
    set nocompatible               " Be iMproved
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
set runtimepath+=$GOROOT/misc/vim

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/vein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/vein')
  call dein#begin('~/.vim/vein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/vein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/neocomplcache') 

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  call dein#add('tpope/vim-fugitive')
  call dein#add('kien/ctrlp.vim')
  call dein#add('flazz/vim-colorschemes')
  call dein#add('scrooloose/nerdtree')
  call dein#add('vim-scripts/dbext.vim')
  call dein#add('mattn/webapi-vim')
  call dein#add('mattn/gist-vim')
  call dein#add('tpope/vim-rails', { 'autoload' : {
            \ 'filetypes' : ['haml', 'ruby', 'eruby'] }})
  call dein#add('kchmck/vim-coffee-script:')
  call dein#add('w0ng/vim-hybrid')
  call dein#add('chriskempson/vim-tomorrow-theme')
  call dein#add('Shougo/unite.vim')
  call dein#add('ujihisa/unite-colorscheme')
  call dein#add('google/maktaba')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('tpope/vim-haml')
  call dein#add('ngmy/vim-rubocop')
  call dein#add('hsanson/vim-android')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

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

filetype plugin on
" colorscheme Tomorrow-Night-Bright 
colorscheme badwolf

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }


