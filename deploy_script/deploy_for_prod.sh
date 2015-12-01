#!/bin/sh

cd /var/www/locsapp-doc.sylflo.fr/docapiswagger
eval `ssh-agent`
ssh-add /var/lib/jenkins/.ssh/locsAppGitHub_rsa
git checkout .
git pull

sudo /etc/init.d/nginx  restart

