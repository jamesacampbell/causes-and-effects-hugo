#!/bin/bash
echo "initializing update and publish script for causes and effects"
today="$(date '+%Y-%m-%d')"
# go to project folder
cd ~/projects/hugositejc/
# write changelog
echo "$today" >> changelog
# pull latest changes
sudo -S -u jamesc -i git -C ~/projects/hugositejc/ pull
# push any updates
sudo -S -u jamesc -i git -C ~/projects/hugositejc/ add --all
sudo -S -u jamesc -i git -C ~/projects/hugositejc/ commit -m  'updates'
sudo -S -u jamesc -i git -C ~/projects/hugositejc/ push
# compile via hugo command
hugo
# go to resulting public folder of compiled data, should move to environmental variables to help automate later
cd /home/jamesc/projects/hugositejc/public
# copy all to root web folder
sudo /bin/cp -R * /home/user-data/www/default
echo "completed new publication of causes & effects"
