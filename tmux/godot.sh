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
    tmux rename-window -t 0 'server'
    tmux send-keys -t 'server' 'cd server' C-m 
    tmux send-keys -t 'server' 'nvim' C-m 

    tmux new-window -t $SESSION:1 -n 'client'
    tmux send-keys -t 'client' 'cd client' C-m 
    tmux send-keys -t 'client' 'nvim --listen /tmp/godot.pipe' C-m 

    # Split second pane
    tmux new-window -t $SESSION:2 -n 'zsh'
    tmux split-window -t 'zsh'
fi

# Attach Session, on the Main window
tmux attach-session -t $SESSION:0
