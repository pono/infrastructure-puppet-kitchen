Vagrant.configure(2) do |config|
  config.vm.provision "shell", inline: <<-SHELL
     sudo apt update
  SHELL
end
