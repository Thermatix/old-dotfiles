augroup vimrc_autocmd
	autocmd!
	autocmd VimEnter * call StartUpWithoutArgs()
	autocmd CursorHold * if exists("t:NerdTreeBufName") |  @:call nerdtree#ui_glue#invokeKeyMap("C")<CR>| endif
	" autocmd VimEnter * RainbowParenthesesToggle
	" autocmd Syntax * RainbowParenthesesLoadRound
	" autocmd Syntax * RainbowParenthesesLoadSquare
	" autocmd Syntax * RainbowParenthesesLoadBraces
	autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
	autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
	autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

augroup END
" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif
