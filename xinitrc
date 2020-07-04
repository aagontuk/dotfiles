xbindkeys -f ~/dotfiles/xbindkeysrc
# picom -b -f --config ~/dotfiles/compton.conf
exec i3 -c ~/dotfiles/i3.conf

if [ -f $HOME/.Xmodmap ]; then
    /usr/bin/xmodmap $HOME/.Xmodmap
fi
