call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/neco-syntax')

call dein#add('carlitux/deoplete-ternjs',{
			\"build": 'npm install -g tern'
\})

let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#include_keywords = 1
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ ]

call dein#add('sebastianmarkow/deoplete-rust')
let g:deoplete#sources#rust#racer_binary=system('where racer')
let g:deoplete#sources#rust#rust_source_path=$RUST_SRC_PATH
let g:deoplete#sources#rust#documentation_max_height=20

call dein#add('zchee/deoplete-zsh')
" call dein#add('')
" call dein#add('')
let g:deoplete#enable_at_startup=1
let g:deoplete#auto_complete_delay=0
