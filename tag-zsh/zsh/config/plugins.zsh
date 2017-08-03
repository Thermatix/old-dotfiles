ohmyzshplugs=(
	osx
	gitfast
	git-extras
	ruby
	gem
	brew
	compleat
	nyan
	web-search
	colored-man-pages
	extract
)

ohmyzshlibs=(
	completion
	compfix
	nvm
	grep
	misc
	key-bindings
	history
	spectrum
)


plugins=(
	zdharma/fast-syntax-highlighting
	zsh-users/zsh-completions
	zsh-users/zsh-autosuggestions
	HeroCC/LS_COLORS
	reem/watch
)


for omzp in $ohmyzshplugs; do
	zplug "plugins/$omzp", from:oh-my-zsh
done

for omzl in $ohmyzshlibs; do
	zplug "lib/$omzl", from:oh-my-zsh
done


for plugin in $plugins; do
	zplug $plugin, from:github
done


zplug "themes/agnoster", from:oh-my-zsh, as:theme
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"

if ! zplug check --verbose; then
  printf "Install zplug plugins? [y/N]: "
  if read -q; then
      echo; zplug install
  fi
fi

zplug load --verbose
