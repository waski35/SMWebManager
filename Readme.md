# StarMade Web Manager for Phalcon PHP Framework

SMWM is a tool for Starmade Dedicated server's admins using doomsiders shadow to view server's stats, logs, and all doomsiders data in more elegant fashion than using phpmyadmin and logging into db.

# License

This software is licensed under GNU GPL 2 license. For terms see : https://www.gnu.org/licenses/old-licenses/gpl-2.0.html


Server software :
- Apache 2.4
- php 5.5 to 7.0
- Mysql Server 5.5
- php5-intl (module for php5 -> "apt-get install php5-intl) - its required for symfony framework to work
- apache2-mpm-itk module installed and enabled (for running web application as user that runs doomsider shadow - see apache2 documentation how to set user as owner of apache instance runing this app in virtual host configuration file)
- Phalcon PHP Framework 3.0.* (install instruction : https://docs.phalconphp.com/en/latest/reference/install.html)

Libs :
* doomsider shadow bash script, and set up database for it (for install instructions for this, see doomsider repository install instructions -> https://github.com/doomsider/shadow)

Package Managers : 
- composer
- nodejs, npm
- bower

* doomsider shadow bash script, and set up database for it (for install instruction for this see doomsider repository install instructions -> https://github.com/doomsider/shadow)

Tested on Ubuntu 14.04 LTS, 16.04.LTS


Install insttructions :
- Install serwer software mentioned above,
- Download this package ("git clone https://github.com/waski35/SMWebManager.git /var/www/SMWebManager");
- Install nodejs ("sudo apt-get install nodejs"),
- Install npm ("sudo apt-get install npm"),
- Install bower ("sudo npm install -g bower"),
- Navigate to /var/www/SMWebManager ("cd /var/www/SMWebManager"),
- Install composer in local directory (https://getcomposer.org/download/) ie. /var/www/SMWebManager or other web directory form where this page will be served by apache 2
- Install symfony 2.8 with composer "php composer.phar install" <- call this in /var/www/SMWebManager
- wait for composer to install dependencies,
- Install project dependencies with bower ("bower install") or ("bower install --allow-root") if running on root account,
  - if you get error that node has not been found install nodejs-legacy ("sudo apt-get install nodejs-legacy") to fix package naming issues on debian/ubuntu



# SMWM Configuration

In app's "/var/www/SMWebManager/app/config/config.php" file in database connection section you should put connection parameters for doomsider's database, so web app can connect to datasource.

Also You should change default admin password for more secure (default is 'secret_admin_password', login 'admin').

Sending admin commands to starmade dedicated server requires 'path_to_shadow' config setting configured by putting there absolute system path to directory containing doomsiders shadow (shadow.dtsd script). Path should counatin only directories, excluding files. 

Warning ! Apache Web Server should be configured to run as the same user who owns and runs doomsiders shadow and starmade server - this is necessary for SMWM to operate properly.
This can be achieved by using official apache2-mpm-itk version, and by configuring sites virtual host to be served as said user.


# In Development ("-" schedeuled, "+" completed)

See Project details : https://github.com/waski35/SMWebManager/projects/1


# Future plans

See Project details : https://github.com/waski35/SMWebManager/projects/1

# Development Branch naming and usage

Currently dev branch is dedicated to on-going developent and is considered much less stable than master branch which is dedicated to give more stable expirience in use of this software.

For fixing particular issues there are branches containing fix for given issue (name of this branch is number if issue). 



