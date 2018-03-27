
call dein#add('scrooloose/nerdTree',
			\{'on_cmd':'NERDTreeToggle'})
call dein#add('Xuyuanp/nerdtree-git-plugin',
			\{'on_cmd':'NERDTreeToggle'})
call dein#add('jistr/vim-nerdtree-tabs',
			\{'on_cmd':'NERDTreeToggle'})

let NERDTreeShowHidden=1 "set nerdtree to show hidden files
let g:NERDTreeWinSize=30
let NERDTreeQuitOnOpen =0
let NERDTreeMinimalUI = 1

" let g:NERDTreeDirArrowExpandable = '+'
" let g:NERDTreeDirArrowCollapsible = '~'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"sets nerd tree to focus when vim is started without any args
function! StartUpWithoutArgs()
    if 0 == argc()
        NERDTreeToggle
    end
endfunction


if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif

autocmd VimEnter * call StartUpWithoutArgs()

" autocmd bufenter * if (winnr(“$”) == 1 && exists(“b:NERDTreeType”) && b:NERDTreeType == “primary”) | q | endif
"
au CursorHold * if exists("t:NerdTreeBufName") |  @:call nerdtree#ui_glue#invokeKeyMap("C")<CR>| endif


map <F7> :NERDTreeToggle<CR>
