#!/usr/bin/env bash
#update pacman
pacman -Syy
#install server applications
pacman -S --noconfirm --needed nodejs
pacman -S --noconfirm --needed couchdb
pacman -S --noconfirm --needed nginx
#add ruby gems directory to path
#cp /vagrant/vagrant/profile /etc/profile
#gem install compass
#configure servers
cp /vagrant/vagrant/nginx.conf /etc/nginx/nginx.conf
cp /vagrant/vagrant/proxy.conf /etc/nginx/proxy.conf

systemctl enable couchdb
systemctl start couchdb

systemctl enable nginx
systemctl start nginx