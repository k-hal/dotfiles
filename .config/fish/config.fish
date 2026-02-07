# pyenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
source (pyenv init - | psub)

# rbenv
set -x PATH $HOME/.rbenv/bin $PATH
source (rbenv init - | psub)

# nodeenv
set -x PATH $HOME/.nodenv/bin $PATH
source (nodenv init - | psub)

#fisherパッケージoh-my-fish/plugin-pecoの設定
function fish_user_key_bindings
  bind \cr peco_select_history # Bind for prco history to Ctrl+r
end


# powerline-go
function fish_prompt
    /usr/local/bin/powerline-go -error $status -shell bare
end

# go/bin
set -x PATH $HOME/go/bin $PATH

# rust
set -x PATH $HOME/.cargo/bin $PATH

# Lang
set -x LC_LANG ja_JP.UTF-8
set -x LC_CTYPE ja_JP.UTF-8
set -x LANG ja_JP.UTF-8
#set -x LC_ALL ja_JP.UTF-8
#set -x LANGUAGE ja_JP.UTF-8

# asdf
# source ~/.asdf/asdf.fish
set -x ASDF_DATA_DIR $HOME/.asdf
set -x PATH $ASDF_DATA_DIR/shims $PATH

# github cli
eval (gh completion -s fish| source)

# sdkman
set -x JAVA_HOME $HOME/.sdkman/candidates/java/current/
set -x PATH $PATH $JAVA_HOME/bin
