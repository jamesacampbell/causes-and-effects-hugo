#!/bin/bash
cd ~/projects/hugositejc/
hugo
cd public
cp -R * /usr/share/nginx/html
echo "completed new publication of causes & effects"
