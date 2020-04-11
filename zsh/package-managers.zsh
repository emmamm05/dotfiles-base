 # rbenv for ruby
export PATH=~/.rbenv/bin:${PATH}
eval "$(rbenv init -)"

# nvm for node
export NVM_DIR="$HOME/.nvm"
nvm() {
  echo "Lazy loading nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
  nvm $@
}
