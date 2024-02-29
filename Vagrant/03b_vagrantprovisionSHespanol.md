## Provisión a través dun script de bash - .sh

Imos aprovisionar a máquina anterior, co script que pon o teclado e a linguaxe en ESPAÑOL, pero agora farémolo **chamando a un SCRIPT** desde o Vagrantfile.

`  config.vm.provision "shell", path: "lenguajees_ES.sh"`

Indicamos coa opción `path` a ruta do script que queremos executar.

#### Vagrantfile quedaría así



```ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname='Ubu2004FOCAL'
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = 2
    vb.name='Ubuntu20.04-FOCAL-ES-provision SH'
    #vb.gui = true
    #vb.linked_clone = true
    vb.check_guest_additions = false
  end
  config.vm.synced_folder ".datos", "/home/vagrant/data"
  config.vm.provision "shell", path: "lenguajees_ES.sh"

end

```

#### O script lenguajees_SH.sh
O script tería o seguinte contido:

```bash
    #!/bin/bash
   
      echo "Iniciando actualización"
      apt-get update -y

      echo "Instalando paquetes idioma"
      apt-get install language-pack-es -y
      apt-get install language-pack-es-base -y

      echo "Modificando paquetes idioma"
      echo "LC_ALL=es_ES.UTF_8" >> /etc/default/locale
      echo "LANGUAGE=es_ES" >> /etc/default/locale

      echo "Modificando locale.gen"
      echo "es_ES.UTF-8 UTF-8" >> /etc/locale.gen
      locale-gen
      echo "Exportando a variable global de idioma"
      export LANG=es_ES.UTF-8

      #Configurando o teclado en español
      apt-get install console-data -y
      apt-get install x11-xkb-utils -y
      setxkbmap -layout 'es,es' -model pc105
      
      #Reinicio do servizo de teclado
      sudo systemctl restart keyboard-setup.service
      echo "FIN"

```

Por suposto, tanto o Vagrantfile como o script lenguajees_ES.sh están no entorno virtual do proxecto, é dicir, dentro da carpeta do proxecto a executar.

--- **Descarga dos ficheiros do proxecto**:
+ [Proxecto en ZIP](./scriptsVagranfiles/provisionSHespanol/provisionSHespanol.zip)
+ [Vagrantfile ProxectoSHespanol](./scriptsVagranfiles/provisionSHespanol/Vagrantfile)
+ [Script lenguajees_ES.sh](./scriptsVagranfiles/provisionSHespanol/lenguajees_ES.sh)


