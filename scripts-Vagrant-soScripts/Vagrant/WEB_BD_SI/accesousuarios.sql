use mysql;
UPDATE mysql.user SET authentication_string = PASSWORD('renaido') WHERE User = 'root' AND Host = 'localhost';
flush privileges;
CREATE USER 'userbd'@'%' IDENTIFIED BY 'userbd';
GRANT ALL PRIVILEGES ON *.* TO 'userbd'@'%';
CREATE USER 'root'@'%' IDENTIFIED BY 'renaido';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
flush privileges;
