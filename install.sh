#!/usr/bin/env bash

# installer for pyvenv

# create directory .pyvenv if it doesn't exist already
[ ! -d "~/.pyvenv" ] && mkdir ~/.pyvenv

# move pyvenv and create_python there
/usr/bin/cp pyvenv create_python ~/.pyvenv

# source
cat <<EOF >> ~/.bashrc

# pyvenv setup
###########################################################

source $HOME/.pyvenv/pyvenv

###########################################################
EOF

echo "Installation completed!"
