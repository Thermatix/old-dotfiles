"
set background=dark
set t_Co=256
set termguicolors " if you want to run vim in a terminal

set nu
set ts=2 sw=2 noet
" highlight the current line
set cursorline
" Highlight active column
set cuc cul"
set number relativenumber
set laststatus=2
set cmdheight=2

set ts=2 sw=2 noet

if $TMUX != ""
	set t_ut=
endif
"
" " let g:indentLine_char = '⎸'
" " let g:indentLine_char = '┆'
" " let g:indentLine_char = '¦'
" " let g:indentLine_char = '│'
" " let g:indentLine_char = '▏'
set fillchars+=vert:│
hi vertsplit guifg=bg guibg=grey
hi foldcolumn guibg=bg
hi LineNr guibg=bg

highlight ExtraWhitespace ctermbg='red'
"
syntax sync minlines=256

colorscheme gruvbox
