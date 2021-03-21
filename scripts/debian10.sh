#!/bin/bash

# basic tools
apt-get update
apt-get install -y zsh git tmux jq tree curl vim
git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
sudo chsh -s $(grep /zsh$ /etc/shells | tail -1) vagrant

# docker
curl -sSL https://get.docker.com/ | sh
usermod -aG docker vagrant

curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# link
ln -s /home/vagrant/Documents/dotfiles/dotfiles/.tmux.conf /home/vagrant/.tmux.conf
ln -s /home/vagrant/Documents/dotfiles/dotfiles/.zshrc /home/vagrant/.zshrc
ln -s /home/vagrant/Documents/.aws /home/vagrant/.aws
ln -s /home/vagrant/Documents/.kube /home/vagrant/.kube
