# StarMade Web Manager for Phalcon PHP Framework

SMWM is a tool for Starmade Dedicated server's admins using doomsiders shadow to view server's stats, logs, and all doomsiders data in more elegant fashion than using phpmyadmin and logging into db.

# License

This software is licensed under GNU GPL 2 license. For terms see : https://www.gnu.org/licenses/old-licenses/gpl-2.0.html


# Dependencies

- doomsider's shadow (with all its dependencies, working) - https://github.com/doomsider/shadow (follow its install instructions)

- Apache 2.4
- PHP 5.5
- Phalcon 3.0.* PHP Framework (install instruction : https://docs.phalconphp.com/en/latest/reference/install.html)
- npm, nodejs, php composer (to install project javascript / php  dependencies)


Type this to install package managers for web :
```sh
sudo apt-get install nodejs
sudo apt-get install npm
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '55d6ead61b29c7bdee5cccfb50076874187bd9f21f65d8991d46ec5cc90518f447387fb9f76ebae1fbbacf329e583e30') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
```

# Installation

After installing above dependencies...

Download contents of SMWM repository (as below using git clone command) to shadow directory

```sh
git clone https://github.com/waski35/SMWebManager.git

```
Now you need to install web application configured dependencies by executing below commands in web app directory in linux shell :

```sh

npm install
npm install -g bower
bower install [--allow-root] 
php composer.phar install

```
"npm install -g bower" - this will install bower globally (usefull sometimes)
"--allow-root" switch is for installing bower managed dependensies as root. Remember to chown it and chmod it to starmade user later.
```sh
chown -R starmade:starmade /home/starmade/starmade/SMWebManager
chmod -R 0777 /home/starmade/starmade/SMWebManager
```
This is fastest way to set it up, however not the most secure one. Mostly "/cache" directory in web app root needs to be writable by Apache and PHP.

# SMWM Configuration

In app's "/app/config/config.php" file in database connection section you should put connection parameters for doomsider's database, so web app can connect to datasource.

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



