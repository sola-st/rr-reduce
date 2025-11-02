#!/bin/bash
set -e

git submodule update --init --recursive
cargo install wasm-pack --version 0.13.1 --locked
npm install
npm run build
npx playwright install-deps
npx playwright install

tar xvf evaluation/engines/wasmedge-93fd4ae.tar.gz -C evaluation/engines/
tar xvf evaluation/engines/wasmedge-862fffd.tar.gz -C evaluation/engines/

pip install tabulate ipykernel scipy matplotlib
