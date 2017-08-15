"ruby
let g:tagbar_type_ruby = {
		\ 'ctagstype' : 'ruby',
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods',
        \ 'd:rspec describes',
        \ 'C:rspec context',
        \ 'i:rspec tests',
    \ ],
		\ 'kind2scope' : {
				\'m' : 'module',
				\'c' : 'class',
				\'f' : 'methods',
				\'F' : 'singleton methods',
		\},
		\ 'scope2kind' : {
		\ 'module' 						: 'm',
		\ 'class'  						: 'c',
		\ 'methods'						: 'f',
		\ 'singleton methods' : 'F',
		\},
		\ 'sro' : '::',
		\ 'ctagsbin':  'ripper-tags',
		\ 'ctagsargs': ['-f', '-']
\ }

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
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits,traits',
        \'i:impls,trait implementations',
    \]
    \}
