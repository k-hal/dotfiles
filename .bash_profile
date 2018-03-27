# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi
[[ -d ~/.pyenv ]] && \
  export PYENV_ROOT=$HOME/.pyenv && \
  export PATH=$PYENV_ROOT/bin:$PATH && \
  eval "$(pyenv init -)"
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"
[[ -d ~/.nvm ]] && export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export PATH=$PATH:/Users/koichi-haruna/bin

source '/Users/koichi-haruna/lib/azure-cli/az.completion'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/koichi-haruna/src/google-cloud-sdk/path.bash.inc' ]; then source '/Users/koichi-haruna/src/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/koichi-haruna/src/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/koichi-haruna/src/google-cloud-sdk/completion.bash.inc'; fi

if [ -f "$PATH/powerline-daemon" ] ; then powerline-daemon -q; fi
source ~/.pyenv/versions/2.7.13/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

