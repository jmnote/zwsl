#!/bin/bash
apt-get install -y git
cd
rm -rf .mywsl
git clone --depth=1 https://github.com/jmnote/mywsl.git .mywsl
