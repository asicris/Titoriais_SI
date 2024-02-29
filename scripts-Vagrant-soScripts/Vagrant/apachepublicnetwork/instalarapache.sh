#!/bin/bash
apt-get update
apt-get install -y apache2
apt-get install -y php libapache2-mod-php php-mysql
sudo /etc/init.d/apache2 restart
cd /var/www/html
echo '<html><h5>O servidor Web funciona correctamente.</h5> <br><br>Benvido ao IES de Teis</html>' > index.html
