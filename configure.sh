#!/usr/bin/bash 

sudo pacman -S clang go

go install github.com/incu6us/goimports-reviser/v3@latest 
go install mvdan.cc/gofumpt@latest
go install github.com/segmentio/golines@latest

sudo echo "PATH=$PATH:/home/$(whoami)/go/bin" >> /home/$(whoami)/.bashrc

rm -f /home/$(whoami)/.config/nvim/lua/custom/*

cp -rf ./custom /home/$(whoami)/.config/nvim/lua/


