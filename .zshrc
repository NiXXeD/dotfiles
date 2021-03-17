# Custom Prompt
PROMPT='%F{red}%n%F{white}@%F{yellow}%m%F{white}:%F{cyan}%~%F{white}$ '

# 0 -- vanilla completion (abc => abc)
# 1 -- smart case completion (abc => Abc)
# 2 -- word flex completion (abc => A-big-Car)
# 3 -- full flex completion (abc => ABraCadabra)
zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'
autoload -Uz compinit && compinit

if [ -f ~/.aliases ]; then . ~/.aliases; fi
if [ -f ~/.envvars ]; then . ~/.envvars; fi
