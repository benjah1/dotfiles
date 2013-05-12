if [ -s ~/.rvm/scripts/rvm ]; then 
	source ~/.rvm/scripts/rvm # Load RVM into a shell session *as a function*
fi

if [ -s ~/.nvm/nvm.sh ]; then
	. ~/.nvm/nvm.sh # This loads NVM
	nvm use v0.10.5 # This loads nodejs v0.10.5
	alias nodee='PATH=$(npm bin):$PATH'
fi

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh # autojump git://github.com/joelthelion/autojump.git

alias node='PATH=$(npm bin):$PATH'
