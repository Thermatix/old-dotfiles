#oh-my-zsh plugins
zplug "plugins/gitfast", from:oh-my-zsh
zplug "plugins/git-extras", from:oh-my-zsh
zplug "plugins/gem", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/compleat", from:oh-my-zsh
zplug "plugins/nyan", from:oh-my-zsh
zplug "plugins/web-search", from:oh-my-zsh
zplug "plugins/coloured-man-pages", from:oh-my-zsh

#oh-my-zsh libs
zplug "lib/completion", from:oh-my-zsh
zplug "lib/compfix", from:oh-my-zsh
zplug "lib/nvm", from:oh-my-zsh
zplug "lib/grep", from:oh-my-zsh
zplug "lib/misc", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/spectrum", from:oh-my-zsh

#zsh plugins
zplug zdharma/fast-syntax-highlighting, from:github
zplug zsh-users/zsh-completions, from:github
zplug zsh-users/zsh-autosuggestions, from:github
# zplug reem/watch, from:github


#macos specific plugins
if [[ "$OSTYPE" == *darwin* ]];then
	zplug "lib/clipboard", from:oh-my-zsh 
fi

#theme
zplug "themes/agnoster", from:oh-my-zsh, as:theme

#install plugins if not installed
if ! zplug check --verbose; then
  printf "Install zplug plugins? [y/N]: "
  if read -q; then
      echo; zplug install
  fi
fi

zplug load --verbose
