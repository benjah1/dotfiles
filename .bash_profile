
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s /home/benjamin/.nvm/nvm.sh ]] && . /home/benjamin/.nvm/nvm.sh # This loads NVM
[[ -s /home/benjamin/.nvm/nvm.sh ]] && nvm use v0.10.5 # This loads NVM

alias nodee='PATH=$(npm bin):$PATH'
