alias google-chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome="google-chrome --profile-directory=\"Default\""

alias dck="docker"
alias dckcls="docker container ls"
dckid() { docker container ls --filter "name=$1" --quiet --latest }
dckattach() { docker attach $(dckid $1) }

alias tx=tmuxinator
alias tm=tmux
alias tmwnr="tmux display-message -p '#W'"
alias tmwns="tmux rename-window"

alias uconf="cd ${USER_CONFIG_PATH}"
alias uconfz="cd ${ZSH_PATH}"
alias uconft="cd ${USER_CONFIG_PATH}/tmux"
alias uconftt="cd ${USER_CONFIG_PATH}/tmuxinator"
alias uconfnv="cd ${USER_CONFIG_PATH}/nvim"
alias uconfsave="cd ${USER_CONFIG_PATH} && git add . && git commit; git push && git push github"

alias cypress="$(npm bin)/cypress"

alias dev="cd ${DEV_HOME}"
alias urb="cd ${DEV_HOME}/urbarium-admin-react"

watch() { while :; do clear; $@; sleep 2; done }