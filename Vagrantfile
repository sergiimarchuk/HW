# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "appsrv" do |appsrv_config|
    appsrv_config.vm.box = "appsrv"
    appsrv_config.ssh.private_key_path = '~/.vagrant.d/id_rsa'
    appsrv_config.vm.network "private_network", :ip => '10.10.10.2'
    appsrv_config.vm.network "forwarded_port", guest: 22, host: 3333, id: "ssh"
    appsrv_config.vm.network "forwarded_port", guest: 80, host: 8080
  end
  config.vm.define "monsrv" do |monsrv_config|
    monsrv_config.vm.box = "monsrv"
    monsrv_config.ssh.private_key_path = '~/.vagrant.d/id_rsa'
    monsrv_config.vm.network "private_network", :ip => '10.10.10.3'
    monsrv_config.vm.network "forwarded_port", guest: 22, host: 4444, id: "ssh"
    monsrv_config.vm.network "forwarded_port", guest: 80, host: 8181
    monsrv_config.vm.network "forwarded_port", guest: 443, host: 4433
  end
end


