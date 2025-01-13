#!/bin/sh

# Set Session Name
SESSION="session"
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

# Only create tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]
then
    # Start New Session with our name
    tmux new-session -d -s $SESSION

    # Name first Pane and start zsh
    tmux rename-window -t 0 'Main'
    # tmux send-keys -t 'Main' 'zsh' C-m 'clear' C-m

    # Split second pane
    tmux new-window -t $SESSION:1 -n 'Second'
    tmux split-window -t 'Second'
fi

# Attach Session, on the Main window
tmux attach-session -t $SESSION:0
