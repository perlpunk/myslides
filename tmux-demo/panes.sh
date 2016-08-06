#!/usr/bin/env bash

SESSION="tmux-demo"

APPDIR="$( dirname "$0" )"

#SOCKET="-S $APPDIR/tmux-demo-socket"
SOCKET=""
TMUX_CMD="tmux -2 $SOCKET"

$TMUX_CMD -f $APPDIR/demo.conf new-session -d -s $SESSION

$TMUX_CMD rename-window -t $SESSION:0 "tmux-demo"

for i in a b c d e f; do
    if [[ "$i" != "a" ]]; then
        $TMUX_CMD split-window -h
    fi
    $TMUX_CMD select-layout tiled
#    $TMUX_CMD send-keys "RPROMPT=''" C-m
    $TMUX_CMD send-keys "export TMUX_PANE_NAME='$i'" C-m
    $TMUX_CMD send-keys "figlet \$TMUX_PANE_NAME" C-m
done

$TMUX_CMD select-layout tiled

$TMUX_CMD attach-session -t $SESSION
