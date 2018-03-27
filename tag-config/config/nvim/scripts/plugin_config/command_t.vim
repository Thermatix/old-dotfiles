call dein#add('wincent/command-t',{
	\"build": 'sh -c "cd ruby/command-t/ext/command-t && bundle install && ruby extconf.rb && make"'
\})
nmap <C-p> :CommandT<CR>
