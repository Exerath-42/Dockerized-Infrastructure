DELETE FROM mysql.user WHERE User='';
ALTER USER 'root'@'localhost' IDENTIFIED BY "_ROOT_PASS";
FLUSH PRIVILEGES;
CREATE USER 'wp_user'@'localhost' IDENTIFIED by "_WP_PASS";
FLUSH PRIVILEGES;
CREATE DATABASE wordpress CHARACTER SET utf8 COLLATE utf8_general_ci;
GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_user'@'%' IDENTIFIED by "_WP_PASS";
FLUSH PRIVILEGES;