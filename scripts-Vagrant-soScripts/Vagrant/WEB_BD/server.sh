#!/usr/bin/env bash
### echo "------------------"
### echo "Engadindo apt-cacher"
### echo "Acquire::http { Proxy \"http://192.168.1.254:3142\";};" > /etc/apt/apt.conf.d/01apt-cacher-ng

echo "------------------"
echo "Engadindo repositorio php"
add-apt-repository -y ppa:ondrej/php > /dev/null 2>&1

echo "------------------"
echo "Añadiendo repositorio mariadb"
apt-get update -qq > /dev/null 2>&1
apt-get install software-properties-common gnupg-curl -y -qq > /dev/null 2>&1
apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc' > /dev/null 2>&1
add-apt-repository 'deb [arch=amd64,arm64,i386,ppc64el] https://mirrors.up.pt/pub/mariadb/repo/10.3/ubuntu xenial main' > /dev/null 2>&1

echo "------------------"
echo "Actualizando repositorios e equipo"
apt-get update -qq > /dev/null 2>&1
### apt-get dist-upgrade -y -qq > /dev/null 2>&1

echo "------------------"
echo "Instalando apache-php"
apt-get install apache2 php7.2 libapache2-mod-php7.2 php7.2-common php7.2-mbstring php7.2-xmlrpc php7.2-soap php7.2-gd php7.2-xml php7.2-intl php7.2-mysql php7.2-cli php7.2-zip php7.2-curl mariadb-client-10.3 -y -qq > /dev/null 2>&1

echo "-----------------"
echo "Habilitando SSL"
a2enmod ssl > /dev/null 2>&1
a2ensite default-ssl.conf > /dev/null 2>&1

echo "------------------"
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
cat > /var/www/html/info.php << EOF
<?php
phpinfo();
?>
EOF

echo "-----------------"
echo "Preparando adminer.php"
wget -O /var/www/html/adminer.php https://www.adminer.org/latest.php > /dev/null 2>&1

echo "-----------------"
echo "Reiniciando apache"
systemctl restart apache2.service

echo "-----------------"
echo "------ FIN ------"
