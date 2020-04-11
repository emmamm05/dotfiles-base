COLOR_BG_ALERT='#751b3e'
COLOR_BG_WARN='#3F3F3F'
COLOR_BG_SAFE='#146b4b'
COLOR_BG_CLEAR='#060606'
COLOR_BG_SAFER='#003333'

tm-alert() { tmux select-pane -t $TMUX_PANE -P "bg=${COLOR_BG_ALERT}" }
tm-warn() { tmux select-pane -t $TMUX_PANE -P "bg=${COLOR_BG_WARN}" }
tm-safe() { tmux select-pane -t $TMUX_PANE -P "bg=${COLOR_BG_SAFE}" }
tm-safer() { tmux select-pane -t $TMUX_PANE -P "bg=${COLOR_BG_SAFER}" }
tm-clear() { tmux select-pane -t $TMUX_PANE -P "bg=${COLOR_BG_CLEAR}" }

alert_box() {
  echo "
 ┌──────────────────────────────────────────────────────────┐
     $1
 └──────────────────────────────────────────────────────────┘
"
}

decorated_env_begin() {
  PREV_WINDOWS_NAME=$(tmux display-message -t $TMUX_PANE -p '#W')
  tmux rename-window -t $PREV_WINDOWS_NAME $1
  CURR_WINDOWS_NAME=$(tmux display-message -t $TMUX_PANE -p '#W')
  tmux select-pane -t $TMUX_PANE -P "bg=$2"
  alert_box $1;
}

decorated_end(){
  tmux rename-window -t $CURR_WINDOWS_NAME ${PREV_WINDOWS_NAME:-[no name]}
  tm-clear
}
