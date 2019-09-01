# pyenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
source (pyenv init - | psub)

# rbenv
set -x PATH $HOME/.rbenv/bin $PATH
source (rbenv init - | psub)

set -x LC_LANG ja_JP.UTF-8
set -x LC_CTYPE ja_JP.UTF-8

#set fish_plugins git tmux 
# powerline-go
function fish_prompt
    /usr/local/bin/powerline-go -error $status -shell bare
end

# peco
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

