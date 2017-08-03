" For vundle
filetype off
call plug#begin('~/.vim/plugged/')
" Vundler"
Plug 'gmarik/vundle'

"============Snippets/autocompletion============

" Snippets for our use :)
Plug 'garbas/vim-snipmate'

" Commenting and uncommenting stuff
Plug 'tomtom/tcomment_vim'

Plug 'honza/vim-snippets'

" Tab completions
Plug 'ervandew/supertab'

"auto completion
Plug 'Valloric/YouCompleteMe'

"react snippits

Plug 'justinj/vim-react-snippets'

"============Themes============

Plug 'tomasr/molokai'

" air-line themes
Plug 'vim-airline/vim-airline-themes'


Plug 'altercation/vim-colors-solarized'

"breezy theme
Plug 'fneu/breezy'

"============language packages============
"=====oneoffs=====
"Toml support
Plug 'cespare/vim-toml'


"=====ruby=====
" Vim Ruby
Plug 'vim-ruby/vim-ruby'
" Rails
Plug 'tpope/vim-rails'
" Ruby Tests
Plug 'skalnik/vim-vroom'

"Rails Snippets
" Plug 'activebridge/rails-snippets'

" erb
" Plug 'whatyouhide/vim-textobj-erb'

"Heredoc Highlighting
Plug 'joker1007/vim-ruby-heredoc-syntax'

"=====javascript=====
" javascript
Plug 'pangloss/vim-javascript'
"Tern-based JavaScript editing support
Plug 'ternjs/tern_for_vim'
"handle bars templates
Plug 'nono/vim-handlebars'
" jsx syntax
Plug 'mxw/vim-jsx'
"Json syntax
Plug 'elzr/vim-json'

"==coffeescript=="
" CoffeeScript syntax
Plug 'kchmck/vim-coffee-script'


"=====Python=====
"Python Auto completion
Plug 'davidhalter/jedi-vim'

"=====Rust=======
"Rust Auto completion
" Plug "rust-lang/rust.vim"
"forked Pluging, using this in attempt to fix missing crate problem
Plug 'jlevesy/rust.vim'

"=====Kotlin======
"Kotlin Syntax Support
Plug 'udalov/kotlin-vim'

"====tmux======
"Tmux conf highlight support

Plug 'tmux-plugins/vim-tmux'

Plug 'christoomey/vim-tmux-navigator'

"============Vim Plugins============

"better start screen
Plug 'mhinz/vim-startify'

" Dependencies of snipmate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

"Good looking bottom :)
Plug 'vim-airline/vim-airline'

" Git tools
Plug 'tpope/vim-fugitive'
"gtk clone
Plug 'gregsexton/gitv'

" Gutter
Plug 'airblade/vim-gitgutter'

" Surround your code :)
"Plug 'tpope/vim-surround'

" Every one should have a pair (Autogenerate pairs for "{[( )
Plug 'jiangmiao/auto-pairs'

"multi cursor
Plug 'terryma/vim-multiple-cursors'

"
" Plug 'vim-scripts/multiselect'

" Fuzzu finder for vim 
Plug 'wincent/command-t'
" Bund;e 'junegunn/fzf.vim'

" Syntax checking
Plug 'scrooloose/syntastic'

"auto file taging and browser
Plug 'xolox/vim-misc'
" Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'

"Changes Bracket colours depending on nesting
Plug 'kien/rainbow_parentheses.vim'

"markdown
Plug 'plasticboy/vim-markdown'

"text alignment
Plug 'godlygeek/tabular'

"open FIle at line
Plug 'bogado/file-line'

"config Generator for ycm
Plug 'rdnetto/YCM-Generator'

" Gist
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'danro/rename.vim'

"Buffer tab line
Plug 'ap/vim-buftabline'

" nerd tree and Plugins
Plug 'scrooloose/nerdTree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
"
Plug 'ryanoasis/vim-devicons'
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/vimfiler.vim'

"repl support for certain languages
Plug 'ujihisa/repl.vim'

call plug#end()

