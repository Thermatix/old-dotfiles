let g:base_path="~/.config/nvim/"
let g:plugins_path=base_path."plugins/"
let g:repos_path=plugins_path."repos/github.com/"
let g:scripts_path=base_path."scripts/"
let g:install_path=base_path."install/"
let g:artifact_path=install_path."artifacts/"

if &compatible
  set nocompatible " be iMproved
endif

let &runtimepath=&runtimepath.','.g:repos_path."Shougo/dein.vim"

"install scripts

exec "so" g:install_path.'dein.vim'

exec "so" g:scripts_path."key_codes.vim"

exec "so" g:scripts_path."key_bindings.vim"

exec "so" g:scripts_path."bclose.vim"

"plugin configs
exec "so" g:scripts_path.'plugins.vim'

"visual settings
exec "so" g:scripts_path."visual.vim"



filetype plugin indent on

" "enable mouse support
set mouse=a
set encoding=UTF-8
set re=1
set shortmess+=c
set hidden
set hlsearch
set incsearch
set ignorecase
set smartcase
set clipboard=unnamed
set backspace=2
set confirm
set autoread

