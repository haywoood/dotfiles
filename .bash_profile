#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
. "$HOME/.cargo/env"

export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/library
export SPACEMACSDIR='~/dotfiles/.spacemacs.d'
export ES_HOME='~/elasticsearch'
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
