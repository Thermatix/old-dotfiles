call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')


let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#exclude_preview = 1
let airline#extensions#tabline#current_first = 1
let g:airline#extensions#tabline#excludes = ['nerdtree']

" nmap <leader>- <Plug>AirlineSelectPrevTab
" nmap <leader>+ <Plug>AirlineSelectNextTab

" navigate buffers
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprev<CR>
" \d delete buffer
nnoremap <S-x> :Kwbd<CR>
