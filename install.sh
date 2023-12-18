#!/bin/sh

npm ci

ln -s "$PWD"/bin "$HOME"/.local/bin

#TODO: link zshrc
