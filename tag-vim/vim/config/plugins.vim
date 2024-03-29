
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


filetype off
call plug#begin('~/dotfiles/tag-vim/vim/plugged')
" Vundler"
Plug 'gmarik/vundle'

"============Snippets/autocompletion============

" Snippets for our use :)
" Plug 'garbas/vim-snipmate'
"
" " Commenting and uncommenting stuff
Plug 'tomtom/tcomment_vim'

Plug 'honza/vim-snippets'


"auto completion
Plug 'Valloric/YouCompleteMe', {'do': 'rbenv only -r 2.3.5 -c \"./install.py --clang-completer --tern-completer --racer-completer\"'}

"react snippits

Plug 'justinj/vim-react-snippets'

Plug 'sheerun/vim-polyglot'

"============Themes============
"
" Plug 'tomasr/molokai'

" air-line themes
Plug 'vim-airline/vim-airline-themes'


" Plug 'altercation/vim-colors-solarized'

"breezy theme
" Plug 'fneu/breezy'

Plug 'morhetz/gruvbox'

"============language packages============
"=====oneoffs=====
"Toml support
Plug 'cespare/vim-toml'


"=====ruby=====
" Vim Ruby
Plug 'vim-ruby/vim-ruby'
" Ruby Tests
Plug 'skalnik/vim-vroom'

" Rails
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-haml'

"Rails Snippets
Plug 'activebridge/rails-snippets'

" erb
" Plug 'whatyouhide/vim-textobj-erb'

"Heredoc Highlighting
Plug 'joker1007/vim-ruby-heredoc-syntax'

"Auto add End
Plug 'tpope/vim-endwise'
" Chef
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'vadv/vim-chef'

"=====javascript=====
" javascript
" Plug 'pangloss/vim-javascript'
"Tern-based JavaScript editing support
Plug 'ternjs/tern_for_vim'
"handle bars templates
Plug 'nono/vim-handlebars'
" jsx syntax
" Plug 'mxw/vim-jsx'
"Json syntax
" Plug 'elzr/vim-json'


"=====Python=====
"Python Auto completion
Plug 'davidhalter/jedi-vim'

"=====Rust=======
"Rust Auto completion
Plug 'rust-lang/rust.vim'
"forked Pluging, using this in attempt to fix missing crate problem
" Plug 'jlevesy/rust.vim'

"=====Kotlin======
"Kotlin Syntax Support
" Plug 'udalov/kotlin-vim'

"====tmux======
"Tmux conf highlight support
"
Plug 'tmux-plugins/vim-tmux'
"
Plug 'christoomey/vim-tmux-navigator'
"
" "============Vim Plugins============
"
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
Plug 'tpope/vim-surround'

"Color hex codes and names
Plug 'chrisbra/Colorizer'

" Every one should have a pair (Autogenerate pairs for "{[( )
Plug 'jiangmiao/auto-pairs'
"multi cursor
Plug 'terryma/vim-multiple-cursors'

"Indent guides
Plug 'nathanaelkane/vim-indent-guides'


" Fuzzy finder for vim 
" Plug 'wincent/command-t'
Plug 'junegunn/fzf.vim', { 'dir': '~/.fzf', 'do': './install --all' }

"Vim motions on SPEED! (keep it above 50 please)
Plug 'easymotion/vim-easymotion'

" Syntax checking
" Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'

"auto file taging and browser
Plug 'xolox/vim-misc'
" Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'

"Changes Bracket colours depending on nesting
Plug 'luochen1990/rainbow'

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
"
