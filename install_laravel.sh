# install apache2
sudo apt-get update -y
sudo apt-get install apache2 -y
# install Php7.1
sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update -y
sudo apt install php7.1 php7.1-xml php7.1-mbstring php7.1-mysql php7.1-json php7.1-curl php7.1-cli php7.1-common php7.1-mcrypt php7.1-gd libapache2-mod-php7.1 php7.1-zip -y
# install Composer
sudo apt-get install curl -y
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/bin/composer
#END on Start
# project file ( sudo chmod 777 -R var/www/)

# fix get/post file not found
# 1 (sudo a2enmod rewrite)
# 2 (service apache2 restart)
# 3 (sudo nano /etc/apache2/sites-available/000-default.conf)
# 4 add in flie
#(
#	<Directory /var/www/html>
#           AllowOverride All
#        </Directory>
#)
# 5 (service apache2 restart)

#fix phpmyadmin not found
# 1 (sudo nano /etc/apache2/apache2.conf)
# 2 add in flie (Include /etc/phpmyadmin/apache.conf)

#fix php run swich index.php
#https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-16-04

#fix phpmyadmin not create user password <6
# 1 (sudo mysql -h localhost -u root -p)
# 2 command in mysql (uninstall plugin validate_password;)
