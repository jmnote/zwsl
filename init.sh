#!/bin/bash

curl -V > /dev/null && echo curl OK || apt-get install -y curl

grep '^alias ll' ~/.bashrc > /dev/null || echo "alias ll='ls -alF --color'" >> ~/.bashrc
grep '^PS1' ~/.bashrc > /dev/null || echo 'PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h\[\033[m\]:\[\033[33;1m\]\w\[\033[m\]\\$ "' >> ~/.bashrc
