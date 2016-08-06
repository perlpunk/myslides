#!/usr/bin/env bash

SESSION="tmux-demo"

APPDIR="$( dirname "$0" )"

SOCKET="-S $APPDIR/tmux-demo-socket"
SOCKET=""
TMUX_CMD="tmux -2 $SOCKET"

$TMUX_CMD -f $APPDIR/demo.conf new-session -d -s $SESSION

$TMUX_CMD rename-window -t $SESSION:0 "tmux-demo"

CLEAR_PROMPT="RPROMPT='' PS1='%% '; clear"

$TMUX_CMD send-keys "$CLEAR_PROMPT" C-m
for ((i = 1; i <= 5; i++)); do
    $TMUX_CMD split-window -h
    $TMUX_CMD select-layout tiled
    $TMUX_CMD send-keys "$CLEAR_PROMPT" C-m
done

$TMUX_CMD select-layout tiled

$TMUX_CMD send-keys "$APPDIR/perl-rocks.sh" C-m

$TMUX_CMD attach-session -t $SESSION
