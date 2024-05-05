#!/bin/sh
if [ ! -d $HOME/bin ]; then
  mkdir $HOME/bin
fi

ln -s $HOME/.config/i3/scripts/i3ws1.sh $HOME/bin/i3ws1
ln -s $HOME/.config/i3/scripts/volumecfg.sh $HOME/bin/volumecfg

