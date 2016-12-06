if [ -f ~/.aliases ]; then . ~/.aliases; fi
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
if [ -f ~/.envvars ]; then . ~/.envvars; fi

export PATH="$PATH:`yarn global bin`"

#git bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
