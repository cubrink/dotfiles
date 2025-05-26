#!/bin/bash

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -f ~/.config/bash/bash_profile.builtin ]; then
    source ~/.config/bash/bash_profile.builtin
fi

if [ -f ~/.config/bash/bash_profile.user ]; then
    source ~/.config/bash/bash_profile.user
fi

