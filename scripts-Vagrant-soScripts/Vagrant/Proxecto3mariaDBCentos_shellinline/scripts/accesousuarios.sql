use mysql;
CREATE USER 'userbd'@'%' IDENTIFIED BY 'userbd';
GRANT ALL PRIVILEGES ON *.* TO 'userbd'@'%';
CREATE USER 'root'@'%' IDENTIFIED BY 'renaido';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
flush privileges;
