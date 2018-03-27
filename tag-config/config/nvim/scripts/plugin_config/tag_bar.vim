call dein#add('majutsushi/tagbar')

"ruby
" let g:tagbar_type_ruby = {
" 		\ 'ctagstype' : 'ruby',
"     \ 'kinds' : [
"         \ 'm:modules',
"         \ 'c:classes',
"         \ 'C:contexts',
"         \ 'f:methods',
"         \ 'F:singleton methods',
"         \ 'a:aliases'
" 				\ ],
" 		\ 'sro' : '::',
" 		\ 'ctagsbin':  'ripper-tags',
" 		\ 'ctagsargs': ['-f', '-']
" \ }
"
"markdown
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }

"rust
let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'m:modules,module names',
        \'T:types,type definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'c:consts,static constants',
        \'t:traits,traits',
        \'i:impls,trait implementations',
        \'f:functions,function definitions',
    \]
    \}

map <F8> :TagbarToggle<CR>
