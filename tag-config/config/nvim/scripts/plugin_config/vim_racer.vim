call dein#add('racer-rust/vim-racer') ", {
" 	\'build': 'cargo install racer && rusup component add rust-src'
" \})

let g:racer_cmd=system('where racer')
let g:racer_experimental_completer = 1

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
