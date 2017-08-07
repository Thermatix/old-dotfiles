#compile command-t
cd $HOME/.vim/plugged/command-t/ruby/command-t/ext/command-t/i && \
	rbenv install 2.4.0 && \
	rbenv local 2.4.0 && \
	ruby ./extconf.rb && \
	make


#compile you complete me
cd $HOME/.vim/plugged/YouCompletMei && \
	./install.py --clang-completer --tern-completer --racer-completer
