#!/bin/sh

i3-msg "workspace 1; append_layout $HOME/.config/i3/workspaces/workspace-coding.json"
kitty &
google-chrome &
