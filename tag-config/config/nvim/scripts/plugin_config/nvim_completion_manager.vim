call dein#add('roxma/nvim-completion-manager')

call dein#add('calebeby/ncm-css',
			\{'on_ft': ['css', 'scss', 'styl', 'less', 'sss']})

call dein#add('roxma/nvim-cm-tern',{
			\'on_ft': ['js', 'json', 'jsx', 'javascript.jsx', 'vue'],
			\"build": 'npm install -g tern'
\})

call dein#add('roxma/ncm-rct-complete')

call dein#add('roxma/nvim-cm-racer',
			\{'on_ft': ['rs']})

call dein#add('Shougo/neco-vim',
			\{'on_ft': ['vim', 'nvim']})

call dein#add('Shougo/neco-syntax')

call dein#add('Shougo/neosnippet')

call dein#add('Shougo/neosnippet-snippets')

call dein#add('honza/vim-snippets')

call dein#add('Shougo/neoinclude.vim')

call dein#add('roxma/ncm-github')

call dein#add('autozimu/LanguageClient-neovim',{
			\'rev': 'next',
			\'build': 'zsh install.sh'
\})
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ }

" call dein#add('')
" call dein#add('')

