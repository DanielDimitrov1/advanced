# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.define "server1" do |server1|
    server1.vm.box = "centos/7"  
    server1.vm.hostname = "server1"
    server1.vm.disk :disk, name: "backup", size: "10GB"
    server1.vm.network "private_network", ip: "192.168.56.15"  #VMNIC2
    server1.vm.provision :shell, path: "./docker.sh"           #installing docker, task 9 and 10
    server1.vm.provision :shell, path: "./opening_port.sh"     #opening port 22, task 5
    server1.vm.provision :shell, path: "./install_sshd.sh"     #opening port 22, task 4


    server1.vm.provider 'virtualbox' do |vb|
      vb.name = "server1"
      vb.memory = 1028
      vb.cpus = 1
     # vb.disk = 10 
    end   
  end

  config.vm.define "client1" do |client1|
    client1.vm.box = "centos/7"  
    client1.vm.hostname = "client"
    client1.vm.disk :disk, name: "backup", size: "10GB"
    client1.vm.network "private_network", ip: "192.168.56.16", auto_config: false           #VMNIC3
    client1.vm.disk :disk, name: "client_backup", size: "10GB"
    client1.vm.provision :shell, path: "./install_sshd.sh"                #Task 4
    client1.vm.provision :shell, path: "./opening_port.sh"                #Task 5
    # client1.vm.provision :shell, path: "./new_check.sh"                   #task 7
    client1.vm.provision :shell, path: "./lynx.sh"                        #task 11

    client1.vm.provider 'virtualbox' do |vb|
      vb.name = "client1"
      vb.memory = 1028
      vb.cpus = 1
    end
  end   
end