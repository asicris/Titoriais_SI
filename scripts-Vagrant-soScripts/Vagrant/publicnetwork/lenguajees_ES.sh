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
