# ┌──────────────────────────────────────────────────────────┐
# │                          Zgen                            │
# └──────────────────────────────────────────────────────────┘

source "${HOME}/.zgen/zgen.zsh"
if ! zgen saved; then
    # zgen prezto
    # zgen prezto tmux
    # zgen prezto history
    # zgen prezto utility
    # zgen prezto ruby
    # zgen prezto python
    # zgen prezto node
    # zgen prezto haskell
    # zgen prezto rsync
    # zgen prezto git
    # zgen prezto ssh
    # zgen prezto terminal
    # zgen prezto directory
    # zgen prezto completion
    zgen load mafredri/zsh-async
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-autosuggestions
    zgen load romkatv/powerlevel10k powerlevel10k

    zgen save
fi

ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-substring-search-up history-substring-search-down)
ZSH_AUTOSUGGEST_CLEAR_WIDGETS=("${(@)ZSH_AUTOSUGGEST_CLEAR_WIDGETS:#(up|down)-line-or-history}")
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#bcbcbc"
