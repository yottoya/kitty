#!/bin/bash

function change_kitty_profile(){
  sh $HOME/.config/kitty/toggle_profile.sh
}


echo "Select a profile:"
echo "   (1) Coding"
echo "   (2) Screencasting"
read -r profile

if [ "$profile" -eq 1 ]; then
    # rm ~/dotfiles/.config/kitty/kitty.conf
    mv $HOME/.config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf.bak
    # cp ~/dotfiles/.config/kitty/kitty-coding.conf ~/dotfiles/.config/kitty/kitty.conf
    mv $HOME/.config/kitty/kitty2.conf $HOME/.config/kitty.conf
    echo "Get in the flow!"
elif [ "$profile" -eq 2 ]; then
    # rm ~/dotfiles/.config/kitty/kitty.conf
    mv $HOME/.config/kitty/kitty.conf.bak
    cp ~/dotfiles/.config/kitty/kitty-screencasting.conf ~/dotfiles/.config/kitty/kitty.conf
    echo "Have fun recording!"
else
    echo "What the hell?"
fi

