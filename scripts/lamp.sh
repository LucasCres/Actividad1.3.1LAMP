#!/bin/bash


if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
else
  echo "No hay .env"
  exit 1
fi


sudo apt update
sudo apt upgrade -y
sudo apt install -y apache2
sudo apache2 -v

sudo apt install -y php libapache2-mod-php php-mysql


echo "<VirtualHost *:80>
	ServerAdmin webmaster@localhost
	DocumentRoot /var/www/html
	DirectoryIndex index.php index.html

	ErrorLog \${APACHE_LOG_DIR}/error.log
	CustomLog \${APACHE_LOG_DIR}/access.log combined
</VirtualHost>" | sudo tee /etc/apache2/sites-available/000-default.conf > /dev/null


sudo systemctl restart apache2


sudo debconf-set-selections <<< "mariadb-server mariadb-server/root_password password $MARIADB_ROOT_PASSWORD"
sudo debconf-set-selections <<< "mariadb-server mariadb-server/root_password_again password $MARIADB_ROOT_PASSWORD"
sudo apt install -y mariadb-server mariadb-client


sudo mariadb -u root <<EOF
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$MARIADB_ROOT_PASSWORD');
FLUSH PRIVILEGES;
QUIT
EOF



sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/dbconfig-install boolean true"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/app-password-confirm password $PHPMYADMIN_PASSWORD"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/admin-pass password $MARIADB_ROOT_PASSWORD"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/app-pass password $PHPMYADMIN_PASSWORD"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2"
sudo apt install -y phpmyadmin php-mbstring php-zip php-gd php-json php-curl



sudo systemctl restart apache2


echo "LAMP y PHPMyAdmin han sido instalados y configurados correctamente."
echo "Puedes acceder a PHPMyAdmin en http://<tu_ip_publica>/phpmyadmin/"
echo "Recuerda que la contraseña de root de MariaDB es '$MARIADB_ROOT_PASSWORD'."
