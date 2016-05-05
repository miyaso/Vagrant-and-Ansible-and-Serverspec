# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "CentOS6.5_x86_64"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
  
  config.vm.define "db" do |db|
    db.vm.network "forwarded_port", guest: 80, host: 8888, id: "http"
    db.vm.network "forwarded_port", guest: 22, host: 2222, id:"ssh"
    db.vm.network "forwarded_port", guest: 3306, host: 4444
    db.vm.network "private_network", ip: "192.168.33.10"
    # db.vm.network "public_network"
    db.vm.hostname = "db-server"
    db.vm.synced_folder ".", "/vagrant"
  end
  #config.vm.provision :shell, :path => "ansible-local.sh"
  #config.vm.provision :ansible do |ansible|
  #  ansible.playbook = "ansible/site.yml"
  #  ansible.inventory_path = "ansible/hosts"
  #  ansible.limit = 'all'
  #end
  config.vm.provision :serverspec do |spec|
    spec.pattern = "spec/db/*_spec.rb"
  end
  #config.vm.provision "shell", inline: <<-SHELL
  #  sudo yum install -y ansible1.9
  #SHELL
  #config.vm.provision "ansible_local" do |ansible|
  #  ansible.playbook = "ansible/site.yml"
  #  ansible.inventory_path = "ansible/hosts"
  #  ansible.limit = 'all'
  #end
end
