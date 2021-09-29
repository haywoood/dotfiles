#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
. "$HOME/.cargo/env"

export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/library
export SPACEMACSDIR='~/dotfiles/.spacemacs.d'
export ES_HOME='~/elasticsearch'
