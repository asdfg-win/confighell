#! /bin/bash

BASE_DIR=$(dirname $(dirname $(realpath $0)))

echo "Deploying tmux config"
ln -sf ${BASE_DIR}/tmux/common/tmux.conf ~/.tmux.conf
