so ~/.vim/config/key_codes.vim

" Buffer switching
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprev<CR>

" \d delete buffer
nnoremap <S-x> :Kwbd<CR> 

"tagbar toggling
map <F8> :TagbarToggle<CR> 
map <F7> :NERDTreeToggle<CR>

" Increment numbers
nnoremap <A-a> <C-a>
nnoremap <A-x> <C-x>

nmap <C-W>! <Plug>Kwbd

nmap <C-p> :CommandT<CR>

map <Leader>c :call vroom#RunTestFile()<CR>
map <Leader>s :call vroom#RunNearestTest()<CR>
" \t to jump to test file
map <leader>t :A<CR>
" \t to jump to related file
map <leader>r :r<cr>
" \E to open file explorer in root
map <leader>E :Explore .<cr>
" \e to open file explorer in current dir
map <leader>e :Explore<cr>

"nerd tree mapings
" map <C-n> <plug>NERDTreeFocusToggle<CR>

" shift plus arrow for selection mode
" shift+arrow selection
map  <Del> <Esc>x1i
vmap  <Del> <Esc>x1v

"multi-cursor mappings"
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Removing escape
ino jj <esc>
cno jj <c-c>
vno v <esc>

" Remove highlights with leader + enter
nmap <Leader><CR> :nohlsearch<cr>

" Ruby hash syntax conversion
nnoremap <F12> :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<return>

" bind K to grep word under cursor
vmap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
