# -*- mode: ruby -*-
# vi: set ft=ruby :

$settings = <<-SCRIPT
echo "Set locale"
powershell -c 'Set-WinUserLanguageList -Force -LanguageList fi-FI'
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "ms-win10-edge"

  config.vm.guest = :windows
  config.ssh.username = "IEUser"
  config.ssh.password = "Passw0rd!"
  config.ssh.insert_key = false

  config.vm.communicator = 'ssh'
  config.ssh.sudo_command = '%c'
  config.ssh.shell = 'sh'

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
        "--audioout", "on",
        '--accelerate3d', 'on',
        '--accelerate2dvideo', 'on',
        '--vram', '256',
        '--clipboard', 'bidirectional'
    ]
  end
  
  config.vm.provision "shell", inline: $settings
end
