#!/bin/bash

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -f ~/.config/bash/bashrc.builtin ]; then
    source ~/.config/bash/bashrc.builtin
fi

if [ -f ~/.config/bash/bashrc.user ]; then
    source ~/.config/bash/bashrc.user
fi

