use mysql;
CREATE USER 'userbd'@'%' IDENTIFIED BY 'userbd';
GRANT ALL PRIVILEGES ON *.* TO 'userbd'@'%';
ALTER USER 'userbd'@'%' IDENTIFIED WITH mysql_native_password BY 'userbd';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'renaido';
FLUSH PRIVILEGES;





grant all privileges on *.* to root identified by 'renaido' with grant option;


sudo nano /etc/my.cnf.d/server.cnf 

bind-address = 0.0.0.0



https://comoinstalar.me/como-instalar-mariadb-en-centos-7/

PASOS:

sudo yum update -y
sudo yum install -y mariadb-server
sudo systemctl start mariadb
sudo systemctl enable mariadb
mysql -u root < datoscompartidos/traballadores.sql
mysql -u root < datoscompartidos/tendaBD.sql

update mysql.user set plugin = 'mysql_native_password' where User = 'root';
FLUSH PRIVILEGES;
sudo yum install -y nano
//metemos bind-address = 0.0.0.0 en sudo nano /etc/my.cnf.d/server.cnf
//[mysqld]
//...
//character_set_server=utf8mb4
//collation_server=utf8mb4_unicode_ci
//bind-address = 0.0.0.0


sudo systemctl stop mariadb
sudo systemctl start mariadb
UPDATE mysql.user SET authentication_string = PASSWORD('renaido') WHERE User = 'root' AND Host = 'localhost';
FLUSH PRIVILEGES;
CREATE USER 'userbd'@'%' IDENTIFIED BY 'userbd';
GRANT ALL PRIVILEGES ON *.* TO 'userbd'@'%';
CREATE USER 'root'@'%' IDENTIFIED BY 'renaido';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
FLUSH PRIVILEGES;


- Instalo 
- Editar  sudo nano /etc/my.cnf.d/server.cnf
 y meter estas doslineas
 
 ...
[mysqld]
character_set_server=utf8mb4
collation_server=utf8mb4_unicode_ci
bind-address = 0.0.0.0
...





CREATE USER 'userbd'@'%' IDENTIFIED BY 'userbd';
GRANT ALL PRIVILEGES ON *.* TO 'userbd'@'%';
Si no deja conectar hacer:
grant all privileges on *.* to root identified by 'renaido' with grant option;


