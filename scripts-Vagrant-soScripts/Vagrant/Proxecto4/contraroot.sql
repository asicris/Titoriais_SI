use mysql;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'renaido';
CREATE USER 'userbd'@'%' IDENTIFIED BY 'userbd';
GRANT ALL PRIVILEGES ON *.* TO 'userbd'@'%';
ALTER USER 'userbd'@'%' IDENTIFIED WITH mysql_native_password BY 'userbd';

