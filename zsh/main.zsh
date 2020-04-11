export DEV_HOME="${HOME}/dev"
export USER_CONFIG_PATH="${DEV_HOME}/user-config"
export VISUAL=nvim
export EDITOR="$VISUAL"
export ZSH_PATH="${USER_CONFIG_PATH}/zsh"

source "${ZSH_PATH}/core.zsh"

ts_begin
#zmodload zsh/zprof

autoload bashcompinit
bashcompinit

include "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
include "${ZSH_PATH}/editor.zsh"
include "${ZSH_PATH}/decorations.zsh"
include "${ZSH_PATH}/aliases.zsh"
include "${ZSH_PATH}/plugins.zsh"
include "${ZSH_PATH}/package-managers.zsh"
include "${HOME}/.fzf.zsh"
include "${HOME}/.iterm2_shell_integration.zsh"
include "${HOME}/.p10k.zsh"

(( ! ${+functions[p10k]} )) || p10k finalize

ts_slow_measure
ts_end
