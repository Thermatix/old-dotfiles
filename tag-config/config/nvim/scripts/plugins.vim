let p_config = g:scripts_path."plugin_config/"

call dein#begin(g:plugins_path)
call dein#add('Shougo/dein.vim')

call dein#add('jiangmiao/auto-pairs')

call dein#add('luochen1990/rainbow')

call dein#add('christoomey/vim-tmux-navigator')

call dein#add('ntpeters/vim-better-whitespace')

call dein#add('chrisbra/Colorizer')

call dein#add('tpope/vim-surround')

call dein#add('tomtom/tcomment_vim')


call dein#add('sheerun/vim-polyglot')

call dein#add('joker1007/vim-ruby-heredoc-syntax')

call dein#add('tpope/vim-endwise')

call dein#add('easymotion/vim-easymotion')

call dein#add('tmhedberg/matchit', { 'on_ft' : 'html' })

call dein#add('godlygeek/tabular', {
			\'on_cmd': [ 'Tab', 'Tabularize' ],
			\'augroup': 'tabular', 
\})


exec "so" p_config."git_gutter.vim"

exec "so" p_config."command_t.vim"

exec "so" p_config."tag_bar.vim"

exec "so" p_config."nerdtree.vim"

exec "so" p_config."gruvbox.vim"

exec "so" p_config."airline.vim"

" exec "so" p_config."fzf.vim"

exec "so" p_config."vim_racer.vim"

" exec "so" p_config."deoplete.vim"
exec "so" p_config."nvim_completion_manager.vim"

call dein#add('ryanoasis/vim-devicons')


call dein#end()

if dein#check_install()
  call dein#install()
endif
