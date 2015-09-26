# Dotfiles

My Ubuntu + Vagrant + Docker dotfiles

## Info

Default settings,

Key      | Value
---------|-------
CPUs     | 2
Memory   | 2048MB
IP       | 192.168.51.102
Provider | Virtualbox

Both default share and rsync share are available

Default, 
```
./default:/home/vagrant/default
```

Rsync,
```
./rsync:/home/vagrant/rsync
```

## Features

1. (Optional) Aliyun Apt repo for mainland China.
2. [Zsh](https://github.com/robbyrussell/oh-my-zsh)
3. [Dokcer](https://www.docker.com)
4. [Shipyard](http://shipyard-project.com/)
5. [Docker-vim](https://github.com/benjah1/vimrc)
6. [Tmux](https://tmux.github.io)
7. Clean up script

### Shipyard

Shipyard will be auto-run for monitoring Dokcer process performance.

Shipyard can be access through http://192.168.51.102:8080

### Clean up Script

Run script below to clean up space. 

```
sudo /home/vagrant/cleanup.sh
```

## Usage

Requirement

* Terminal
* Git
* Virtualbox
* Vagrant

Once you have those installed, 

```
git clone https://github.com/benjah1/dotfiles.git
cd dotfiles
vagrant up
```

For more about Vagrant, see [Vagrant Doc](https://docs.vagrantup.com/v2/)

## My personal way of using this

* In China, I keep the Ali repo on; Abroad, I turn off the Ali repo.
* I keep thing Vagrant VM clean, while programs are running inside Docker.
* I delete un-use docker ps and images. Specially those can be re-created quickly.
* I regularly run the cleanup.sh in order to control vdi file size.
* I use Git, but in the host, so that I can use gui git.
* I use Sublime too, but I prefer Vim.
* Yes, I use Tmux inside the vm, and Vim from the Dokcer.

## Contribution

* Issues are welcome
* As well as push request
* Please be careful don't put any personal or sensitive data in it

## Road map

* Docker swarm
* Maybe more Zsh plugin
