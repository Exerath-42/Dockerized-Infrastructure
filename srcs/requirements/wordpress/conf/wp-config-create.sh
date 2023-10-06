wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --path=/var/www/wordpress --allow-root
cd /var/www/wordpress
wp config create --dbname=wordpress --dbuser=wp_user --dbpass=_DB_PASS --dbhost=my-db --allow-root
wp core install --url=exerath.42.fr --title="Hi! Welcome to exerath wp page" --admin_user=exerath --admin_password=_WP_PASS --admin_email=info@wp-cli.org --allow-root
wp theme install hestia --activate --allow-root
php-fpm7 -F
