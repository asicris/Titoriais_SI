#!/usr/bin/env bash
echo "-----------------"

## Configurar caché de paquetes para acelerar isntalación
## echo "-----------------"
## echo "Añadiendo apt-cacher"
## echo "Acquire::http { Proxy \"http://192.168.1.254\";};" > /etc/apt/apt.conf.d/01apt-cacher-ng

echo "Actualizando repositorios y equipo"
apt update
#apt full-upgrade -y

echo "-----------------"
echo "Instalando apache-php-mysql"

echo "mysql-server mysql-server/root_password password Abc123.." | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password Abc123.." | debconf-set-selections

apt install net-tools apache2 php libapache2-mod-php php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-zip php-curl mysql-client mysql-server -y

echo "Editando /etc/mysql/my.cnf "
echo "[mysqld]" >> /etc/mysql/my.cnf 
echo "character_set_server=utf8mb4" >> /etc/mysql/my.cnf 
echo "collation_server=utf8mb4_unicode_ci" >> /etc/mysql/my.cnf 
echo "bind-address = 0.0.0.0" >> /etc/mysql/my.cnf


echo "------------------------------------------------------"
echo "Creando base datos"
mysql -uroot -pAbc123.. -h localhost -e "CREATE DATABASE wordpress;"
mysql -uroot -pAbc123.. -h localhost -e "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'Abc123..'";
mysql -uroot -pAbc123.. -h localhost -e "GRANT ALL ON wordpress.* TO 'wordpress'@'localhost'";
mysql -uroot -pAbc123.. -h localhost -e "CREATE USER 'root'@'%' IDENTIFIED BY 'renaido'";
mysql -uroot -pAbc123.. -h localhost -e "GRANT ALL ON *.* TO 'root'@'%'";
mysql -uroot -pAbc123.. -h localhost -e "CREATE USER 'userbd'@'%' IDENTIFIED BY 'renaido'";
mysql -uroot -pAbc123.. -h localhost -e "GRANT ALL ON *.* TO 'userbd'@'%'";
mysql -uroot -pAbc123.. -h localhost -e "flush privileges";

echo "------------------------------------------------------"
echo "CREANDO BD TRABALLADORES.SQL E TENDABD.SQL"
mysql -uroot -pAbc123.. -h localhost < /scripts/traballadores.sql
mysql -uroot -pAbc123.. -h localhost < /scripts/tendaBD.sql

echo "------------------------------------------------------"
echo "Reiniciando Mysql.service"
systemctl restart mysql.service


echo "-----------------"
echo "Habilitando SSL"
a2enmod ssl
a2ensite default-ssl.conf

echo "-----------------"
echo "Enlazando DocumentRoot"
if ! [ -L "/var/www/html" ]
then
rm -rf /var/www/html
ln -fs /vagrant_www /var/www/html
fi

echo "-----------------"
echo "Creando index.php"
cat > /var/www/html/index.php << 'EOF'
<?php
echo "
<html>
<head>
    <title>Sitio web en ${_SERVER["SERVER_ADDR"]}</title>
</head>
<body>
<h1>Mi Sitio Web</h1>
Est&aacute;s en ${_SERVER["SERVER_ADDR"]}
</body>
</html>";
?>
EOF

echo "-----------------"
echo "Creando info.php"
cat > /var/www/html/info.php << 'EOF'
<?php
phpinfo();
?>
EOF

#rm /var/www/html/index.html

echo "-----------------"
echo "Preparando adminer.php"
wget -O /var/www/html/adminer.php https://www.adminer.org/latest.php

echo "-----------------"
echo "Reiniciando apache"
systemctl restart apache2.service

echo "------ FIN ------"
