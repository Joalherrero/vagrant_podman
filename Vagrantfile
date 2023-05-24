Vagrant.configure('2') do |config|
  config.vm.define :podman do |podman_vm|
    podman_vm.vm.box = 'centos/8'
    podman_vm.vm.network "private_network", ip: "192.168.59.20"
    podman_vm.vm.hostname = "podman"
    podman_vm.vm.hostname = 'podman'
#    podman_vm.vm.synced_folder 'vagrant_podman', '/vagrant_podman'
#    podman_vm.vm.synced_folder "ansible_podman", "/vagrant_podman", :mount_options => ["ro"]
    podman_vm.vm.provision "shell", inline: "echo 'nameserver 8.8.8.8' | sudo tee /etc/resolv.conf > /dev/null"
    podman_vm.vm.provision 'shell', path: './scripts/podman_machine.sh'

    podman_vm.vm.provider :libvirt do |lv, override|
      #lv.memory = 2*1024
      #lv.cpus = 2
      #lv.cpu_mode = 'host-passthrough'

      lv.customize ["modifyvm", :id, "--memory", "2048"]
      lv.customize ["modifyvm", :id, "--cpus", "2"]
      lv.customize ["storagectl", :id, "--name", "IDE Controller", "--add", "ide"]
      lv.customize ["storageattach", :id, "--storagectl", "IDE Controller", "--port", "1", "--device", "0", "--type", "dvddrive", "--medium", "guestadditions.iso"]
    end

  end
end
