#!/bin/bash
curl -V > /dev/null && echo curl OK || apt-get install -y curl
