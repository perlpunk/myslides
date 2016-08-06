#!/usr/bin/env bash

for i in pe rl ro ck s '\o/'; do
    sleep 0.6
    tmux select-pane -t ':.+'
    tmux send-keys "figlet -W '$i'" C-m
done;
