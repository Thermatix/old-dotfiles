set nocompatible " be iMproved
so ~/.vim/config/plugins.vim
" so ~/.vim/plugin/bclose.vim
so ~/.vim/plugin/function_tag_finder.vim

set tags=./tags;~/tags; " Set tags directory
set autoindent " Auto indention should be on
set virtualedit=onemore 


"sets gutter line numbers to be both relative and absolute
set relativenumber 
set number  

filetype plugin indent on
" load sub config files
so ~/.vim/config/visual.vim

so ~/.vim/config/vimFileConfig.vim

so ~/.vim/config/mapings.vim

so ~/.vim/config/tagbar_config.vim


" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

"key custom key mappings for muli curser
let g:multi_cursor_use_default_mapping=0

"enable mouse support
set mouse=a

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set clipboard=unnamed
set backspace=2
set confirm
set hidden


" let g:vimfiler_as_default_explorer = 1
let NERDTreeShowHidden=1 "set nerdtree to show hidden files
"sets nerd tree to focus when vim is started without any args
function! StartUpWithoutArgs()
    if 0 == argc()
        NERDTreeFocusToggle
    end
endfunction

set autoread
au CursorHold * if exists("t:NerdTreeBufName") |  @:call nerdtree#ui_glue#invokeKeyMap("C")<CR>| endif

let g:vroom_map_keys = 0
let g:vroom_use_dispatch = 1
let g:vroom_use_zeus = 1




augroup myfiletypes
	" Clear old autocmds in group
	autocmd!
	" autoindent with two spaces, always expand tabs
	autocmd FileType ruby,eruby,yaml,markdown,rust set ai sw=2 sts=2 et
augroup END

" status line info
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Air line 
let g:airline#extensions#ale#enabled = 1

" IRB interactive 
if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on

  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif
if &t_Co > 2 || has("gui_running")
  " Enable syntax highlighting
  syntax on
endif

"syntastic config
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1
" let g:syntastic_ruby_exec = expand('~/.rbenv/shims/ruby')
" let g:syntastic_rust_checkers = ['cargo', 'rustc']
" let g:syntastic_loc_list_height=7
" let g:ycm_rust_src_path = expand($RUST_SRC_PATH)
" let g:syntastic_quiet_messages = { 'regex': 'never' }

"Silver Searcher
if executable('ag')
	 " Use ag over grep
	set grepprg=ag\ --nogroup\ --nocolor

	  "    Use ag in CtrlP for listing files. Lightning fast and
	      " respects .gitignore
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

	    " ag is fast enough that CtrlP doesn't need to cache
	let g:ctrlp_use_caching = 0
endif
" load startup commands
"
so ~/.vim/config/startup_commands.vim
