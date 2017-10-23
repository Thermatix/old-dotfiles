function gitdelbranchfunc(){
  git branch -d $1
  git push origin :$1
}

function tinput() {
  tail -f $1 | repeat ${2:-2} IFS= read -re
}

function loadmysqldump() {
	pv $1 | mysql -u root $1
}

function sToken() {
  export SLACK_TOKEN="$@"
}


function vim()
{
	cmd="exec /usr/local/bin/vim $@"
	rbenv only -r 2.3.5 -c "$cmd";
}

if { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
function ta()
{
  all-panes-bg_ "$@" &
}
all-panes-bg_()
{
  local COMMAND=$@

  local ORIG_WINDOW_INDEX=`tmux display-message -p p'#I'`
  local ORIG_PANE_INDEX=`tmux display-message -p '#P'`

  local ORIG_PANE_SYNC=`tmux show-window-options | grep '^synchronize-panes' | awk '{ print $2 }'`

  tmux set-window-option synchronize-panes on

  for i in {1..25}; do tmux send-keys 'C-['; done

  tmux send-keys C-z

  tmux send-keys C-c

  tmux send-keys "$COMMAND; fg 2>/dev/null; echo -n" C-m

  if [[ -n "$ORIG_PANE_SYNC" ]]; then
    tmux set-window-option synchronize-panes "$ORIG_PANE_SYNC"
  else
    tmux set-window-option -u synchronize-panes
  fi

  tmux select-window -t $ORIG_WINDOW_INDEX
  tmux select-pane -t $ORIG_PANE_INDEX
}
fi


notes() {
  if [ ! -z "$1" ]; then
    # Using the "$@" here will take all parameters passed into
    # this function so we can place everything into our file.
    echo "$@" >> "$HOME/notes.md"
  else
    # If no arguments were passed we will take stdin and place
    # it into our notes instead.
    cat - >> "$HOME/notes.md"
  fi
}
