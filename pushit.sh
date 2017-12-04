#!/bin/bash
echo "initializing update and publish script for causes and effects"
cd ~/projects/hugositejc/
sudo -S -u jamesc -i git -C ~/projects/hugositejc/ pull
hugo
cd /home/jamesc/projects/hugositejc/public
sudo /bin/cp -R * /home/user-data/www/default
#sudo /bin/cp -R * /usr/share/nginx/html
echo "completed new publication of causes & effects"
