#!/bin/bash
cd ~/projects/hugositejc/
git pull
hugo
cd public/js/
rm *.js
cd ~/projects/hugositejc/public
cp -R * /usr/share/nginx/html
echo "completed new publication of causes & effects"
