#!/usr/bin/env bash

# installer for pyvenv

# create directory .pyvenv if it doesn't exist already
[ ! -d "$HOME/.pyvenv" ] && mkdir ~/.pyvenv

# move pyvenv and create_python there
/usr/bin/cp -f pyvenv create_python ~/.pyvenv

sourcing=$( grep -P 'source $HOME/.pyvenv/pyvenv' ~/.bashrc )

# source
if [ -n "$sourcing" ]; then
cp ~/.bashrc ~/.bashrc.bak
cat <<EOF >> ~/.bashrc

# pyvenv setup
###########################################################

source $HOME/.pyvenv/pyvenv

###########################################################
EOF
fi

echo "Installation completed!"
