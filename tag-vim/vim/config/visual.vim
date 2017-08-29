" Syntax highlighting and theme

syntax on

" Configs to make Molokai look great
set background=dark
let g:molokai_original=1
let g:rehash256=1
set t_Co=256
" set termguicolors " if you want to run vim in a terminal
" colorscheme breezy
colorscheme molokai

" Show trailing whitespace and spaces before a tab:
highlight ExtraWhitespace ctermbg=red guibg=red

" Lovely linenumbers
set nu


let g:airline_theme='ubaryd'
let g:airline_powerline_fonts=1
set laststatus=2


" highlight the current line
set cursorline
" Highlight active column
set cuc cul"

" Indentation guide settings
" hi IndentGuidesOdd  ctermbg=233
hi IndentGuidesEven ctermbg=236


set ts=2 sw=2 noet
let g:indent_guides_start_level=2
" let g:indent_guides_guide_level=1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors=0


" netrw config
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15

" customise vert split design
set fillchars+=vert:\ 
hi vertsplit guifg=grey guibg=grey

syntax sync minlines=256
set re=1

"VimFiler config
" let g:vimfiler_as_default_explorer = 1
" let g:vimfiler_restore_alternate_file = 1
" let g:vimfiler_tree_indentation = 1
" let g:vimfiler_tree_leaf_icon = '¦'
" let g:vimfiler_tree_opened_icon = '▼'
" let g:vimfiler_tree_closed_icon = '▷'
" let g:vimfiler_file_icon = '-'
" let g:vimfiler_readonly_file_icon = '*'
" let g:vimfiler_marked_file_icon = '√'
" "let g:vimfiler_preview_action = 'auto_preview'
" let g:vimfiler_ignore_pattern =
"   \ '^\%(\.git\|\.idea\|\.DS_Store\|\.vagrant\|.stversions'
"   \ .'\|node_modules\|.*\.pyc\)$'
"
" if has('mac')
"     let g:vimfiler_quick_look_command =  '/Applications//Sublime\ Text.app/Contents/MacOS/Sublime\ Text'
" else
"     let g:vimfiler_quick_look_command = 'gloobus-preview'
" endif
"
" call vimfiler#custom#profile('default', 'context', {
"     \ 'explorer' : 1,
"     \ 'winwidth' : 30,
"     \ 'winminwidth' : 30,
"     \ 'toggle' : 1,
"     \ 'columns' : 'type',
"     \ 'auto_expand': 1,
"     \ 'direction' : 'rightbelow',
"     \ 'parent': 0,
"     \ 'explorer_columns' : 'type',
"     \ 'status' : 1,
"     \ 'safe' : 0,
"     \ 'split' : 1,
"     \ 'no_quit' : 1,
"     \ 'force_hide' : 0,
" \ })
" autocmd FileType vimfiler call s:vimfilerinit()
" autocmd BufEnter * if (winnr('$') == 1 && &filetype ==# 'vimfiler') | q | endif
" function! s:vimfilerinit()
"     set nonumber
"     set norelativenumber
" endf
"
" autocmd FileType vimfiler nmap <silent><buffer><expr> <CR> vimfiler#smart_cursor_map(
" \ "\<Plug>(vimfiler_expand_tree)",
" \ "\<Plug>(vimfiler_edit_file)")
