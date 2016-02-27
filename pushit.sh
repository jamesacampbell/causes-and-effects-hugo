#!/bin/bash
cd ~/projects/hugositejc/
git pull
hugo
cd public
cp -R * /usr/share/nginx/html
echo "completed new publication of causes & effects"
