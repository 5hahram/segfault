#!/bin/bash

# Check if tmux session exists
if ! tmux has-session -t ssh_session 2>/dev/null; then
  tmux new-session -d -s ssh_session "sshpass -p 'segfault' ssh -L5900:0:5900 -o 'SetEnv SECRET=zQuuUYjJLhOOhlaHtwuGlzAu' root@lulz.segfault.net"
fi

# Attach to the tmux session
tmux attach-session -t ssh_session
