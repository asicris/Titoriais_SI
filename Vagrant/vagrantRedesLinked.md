

vb.linked_clone = true

Poñer ip e conectarse desde WorkBench

Ver cómo engadir un cdrom á máquinal.
config.vm.disk :dvd, name: "installer", file: "./installer.iso"


https://developer.hashicorp.com/vagrant/docs/networking/public_network
https://developer.hashicorp.com/vagrant/docs/networking/private_network



 config.vm.network "public_network", ip: "192.168.0.241"

 config.vm.provision "shell", inline: <<-SHELL
 sudo ifconfig eth1 192.168.0.241 netmask 255.255.255.0 up
	sudo route add default gw 192.168.0.1
  SHELL



Crear nuestro boxes

https://ideafalaz.blogspot.com/2018/09/crear-un-base-box-de-vagrant-paso-paso.html
