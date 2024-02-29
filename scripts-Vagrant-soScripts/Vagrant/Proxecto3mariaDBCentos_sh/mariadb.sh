#!/usr/bin/env bash
echo "-----------------"

	echo "Actualizando"
	apt update -y
	echo "Asignando chave a BD"
	sudo echo "mariadb-server mariadb-server/root_password password renaido" | debconf-set-selections
	sudo echo "mariadb-server mariadb-server/root_password_again password renaido" | debconf-set-selections
	
	echo "Instalar mariadb"
	apt install mariadb-server -y
	echo "-----------------"
	
	echo "Parametros mysql-server"

	echo "Editando /etc/mysql/my.cnf "
	echo "[mysqld]" >> /etc/mysql/my.cnf 
	echo "character_set_server=utf8mb4" >> /etc/mysql/my.cnf 
	echo "collation_server=utf8mb4_unicode_ci" >> /etc/mysql/my.cnf 
	echo "bind-address = 0.0.0.0" >> /etc/mysql/my.cnf
	
	sudo systemctl start mariadb
	sudo systemctl enable mariadb

	echo " Dandolle acceso usuarsio DB "
	mysql -uroot -prenaido -h localhost -e "CREATE USER 'admin'@'%' IDENTIFIED BY 'renaido'";
	mysql -uroot -prenaido -h localhost -e "GRANT ALL ON *.* TO 'admin'@'%'";
	mysql -uroot -prenaido -h localhost -e "CREATE USER 'userbd'@'%' IDENTIFIED BY 'renaido'";
	mysql -uroot -prenaido -h localhost -e "GRANT ALL ON *.* TO 'userbd'@'%'";
	mysql -uroot -prenaido -h localhost -e "flush privileges";

	echo "Crear bd traballadores "
	mysql -uroot -prenaido -h localhost < /scripts/traballadores.sql
	echo "Crear bd tendaBD "
	mysql -uroot -prenaido -h localhost < /scripts/tendaBD.sql
	

	sudo systemctl restart mariadb
	
	echo "-----------------"
		
	echo "------ FIN ------"
	
	#sudo mkdir /media/Guest
	#sudo mount -o loop /vagrant/.datoscompartidos/VBoxGuestAdditions.iso /media/Guest
	#cd /media/Guest
	#sudo ./VBoxLinuxAdditions.run	
