# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

# For China only
@aliSource = <<SCRIPT
sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
SCRIPT

@zsh = <<SCRIPT
apt-get update
apt-get install -y zsh git
git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
sudo chsh -s $(grep /zsh$ /etc/shells | tail -1) vagrant
SCRIPT

@docker = <<SCRIPT
curl -sSL https://get.docker.com/ | sh
docker pull benjah1/vimrc
usermod -aG docker vagrant
SCRIPT

@shipyard = <<SCRIPT
curl -s https://shipyard-project.com/deploy | bash -s
SCRIPT

@tmux = <<SCRIPT
apt-get update
apt-get install -y tmux
SCRIPT

@symlink = <<SCRIPT
ln -s /vagrant/.zshrc /home/vagrant/.zshrc
ln -s /vagrant/.tmux.conf /home/vagrant/.tmux.conf
SCRIPT

@cleanup = <<SCRIPT
echo "dd if=/dev/zero of=/bigemptyfile bs=4096k" > /home/vagrant/cleanup.sh
echo "rm -rf /bigemptyfile" >> /home/vagrant/cleanup.sh
chmod +x /home/vagrant/cleanup.sh
SCRIPT

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |vb|
     vb.customize ['modifyvm', :id, "--memory", "2048"]
     vb.customize ['modifyvm', :id, "--cpus", "2"]
     vb.customize ['modifyvm', :id, "--natdnshostresolver1", "on"]
	   vb.customize ["setextradata", :id,   "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
  end
  
  config.vm.network "private_network", ip: "192.168.51.102"
  
  config.vm.synced_folder "./default", "/home/vagrant/default/", create: true    

	config.vm.synced_folder "./rsync", "/home/vagrant/rsync",
		create: true,
		rsync__args: ["--verbose", "--archive", "-z"], 
		rsync__exclude: [".vagrant/"], 
		rsync__auto: true, 
		type: 'rsync', 
		group: 'vagrant', 
		owner: 'vagrant', 
		mount_options: ['dmode=775', 'fmode=764']

  config.vm.provision 'shell', inline: @aliSource
  config.vm.provision 'shell', inline: @zsh
  config.vm.provision 'shell', inline: @docker
  config.vm.provision 'shell', inline: @shipyard
  config.vm.provision 'shell', inline: @tmux
  config.vm.provision 'shell', inline: @symlink
  config.vm.provision 'shell', inline: @cleanup

end
