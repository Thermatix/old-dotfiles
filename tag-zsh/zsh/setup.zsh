export PATH="$HOME/.cask/bin:/Library/PostgreSQL/9.5/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/usr/local/sbin:/sbin:$HOME/.multirust/toolchains/stable/cargo/bin:$HOME/.zsh/bin"

export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

export SSH_KEY_PATH="$HOME/.ssh/dsa_id"


export RUST_SRC_PATH="$HOME/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"
export OPENSSL_INCLUDE_DIR="$(brew --prefix openssl)/include"
export OPENSSL_LIB_DIR="$(brew --prefix openssl)/lib"
export PATH="$HOME/.rbenv/bin:$PATH"

export MANPATH="/usr/bin/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8


# LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
#   if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
#     . $LUNCHY_DIR/lunchy-completion.zsh
#
#
#   fi


source $HOME/.cargo/env
[[ -s $HOME/.rsvm/rsvm.sh ]] && . $HOME/.rsvm/rsvm.sh # This loads RSVM



#creates a symlink for airport in user local bin folder for easier access airport_path="/usr/local/bin/airport"
if [ ! -L $airport_path ]; then
	`ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport $airport_path`
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  fi
}
add-zsh-hook chpwd load-nvmrc
# build prompt status so it uses gitHud instead of the built in git status
build_prompt() {
  RETVAL=$?
  prompt_status
  prompt_virtualenv
  prompt_context
  prompt_dir
  prompt_end
	gitHud zsh
}

eval "$(rbenv init -)"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

bindkey -v
export KEYTIMEOUT=1
# source /usr/local/Cellar/zsh-syntax-highlighting/0.4.1/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
