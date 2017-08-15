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

alias mux="tmuxinator"
