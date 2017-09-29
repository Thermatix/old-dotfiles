# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias ru="bundle exec rackup"
alias sbp="bundle show --paths"

alias tmux="TERM=screen-256color-bce tmux -2"
alias gitdelbranch=gitdelbranchfunc

alias ctagsforgems="ctags -R -f gems.tag sbp"

alias ng="npm list -g --depth=0 2>/dev/null"
alias nl="npm list --depth=0 2>/dev/null"

alias pg-start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg-stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias mysql-start="launchctl load 	-F /usr/local/Cellar/mysql/5.7.19/homebrew.mxcl.mysql.plist"
alias mysql-stop="launchctl unload  -F /usr/local/Cellar/mysql/5.7.19/homebrew.mxcl.mysql.plist"
alias mysql-restart="mysql-stop && mysql-start"

alias mux="tmuxinator"
alias mvim="/usr/local/Cellar/macvim/8.0-136/Macvim.app"
alias dnsreset="sdscacheutil -flushcache;udo killall -HUP mDNSResponder"
alias tosingleline="ruby -e 'p ARGF.read'"
eval $(thefuck --alias)
# alias rails="rails _$RAILS_VER_"
