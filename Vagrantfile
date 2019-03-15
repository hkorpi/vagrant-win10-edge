# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ms-win10-edge"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    vb.name = "ms-win10-edge"
    vb.memory = "4096"
    vb.cpus = 2
    vb.customize [
        "modifyvm", :id,
        "--audio", "pulse",
        "--audiocontroller", "hda",
        "--audioin", "on",
        "--audioout", "on"
    ]
  end
end
