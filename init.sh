#!/bin/bash
curl -V > /dev/null && echo curl OK || apt-get install -y curl
grep '^alias ll' ~/.bashrc > /dev/null || echo "alias ll='ls -alF --color'" >> ~/.bashrc
