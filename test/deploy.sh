#!/bin/sh
ssh jenkinsdeploy@3.92.223.188 <<EOF 
 cd /root/GIT_LAB/node-app/
 git pull
 npm install -production
 npm install pm2@latest -g
 pm2 restart all
 exit
EOF

