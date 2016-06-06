#!/bin/bash
cd ~/projects/hugositejc/
git pull
hugo
cd ~/projects/hugositejc/public
#cp -R * /home/user-data/www/default
sudo cp -R * /usr/share/nginx/html
echo "completed new publication of causes & effects"
