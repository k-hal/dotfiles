# rbenv replased by fisherman
#eval "$(rbenv init -)";
#set -x PATH $HOME/.rbenv/bin $PATH
#set -x PATH $HOME/.rbenv/shims $PATH
#rbenv rehash >/dev/null ^&1

set -x LC_LANG ja_JP.UTF-8
set -x LC_CTYPE ja_JP.UTF-8

# pyenv replased by fisherman
# export PATH="$HOME/.pyenv/shims:$PATH" 
#set -x PATH $HOME/.pyenv/bin $PATH
#status --is-interactive; and . (pyenv init -| psub)


#set fish_plugins git tmux 
powerline-daemon -q
. ~/.pyenv/versions/2.7.13/lib/python2.7/site-packages/powerline/bindings/fish/powerline-setup.fish
powerline-setup

# peco
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

