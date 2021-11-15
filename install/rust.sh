#!/usr/bin/env bash

# install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup install nightly
rustup default nightly
rustup component add rust-src
brew install rust-analyzer
cargo install trunk
rustup target add wasm32-unknown-unknown
