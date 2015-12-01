#!/bin/sh

cd /var/www/locsapp-doc.sylflo.fr/docapiswagger
eval `ssh-agent`
ssh-add /var/lib/jenkins/.ssh/locsAppGitHub_rsa
git checkout .
git pull

http-server -p 8081
sudo /etc/init.d/nginx  restart

