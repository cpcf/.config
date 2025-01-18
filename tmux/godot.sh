#!/bin/sh

# Set Session Name
SESSION="godot"
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

# Only create tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]
then
    # Start New Session with our name
    tmux new-session -d -s $SESSION

    # Name first Pane and start zsh
    tmux rename-window -t 0 'vim'
    tmux send-keys -t 'vim' 'nvim --listen /tmp/godot.pipe' C-m 

    # Split second pane
    tmux new-window -t $SESSION:1 -n 'zsh'
    tmux split-window -t 'zsh'
fi

# Attach Session, on the Main window
tmux attach-session -t $SESSION:0
