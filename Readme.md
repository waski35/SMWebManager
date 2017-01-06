# StarMade Web Manager for Phalcon PHP Framework

SMWM is a tool for Starmade Dedicated server's admins using doomsiders shadow to view server's stats, logs, and all doomsiders data in more elegant fashion than using phpmyadmin and logging into db.

# License

This software is licensed under GNU GPL 2 license. For terms see : https://www.gnu.org/licenses/old-licenses/gpl-2.0.html


# Dependencies

- doomsider's shadow (with all its dependencies, working)

- Apache 2.4
- PHP 5.6
- Phalcon 3.0.* PHP Framework
- npm, nodejs (to install project javascript dependencies)

# Installation

After installing project dependencies You need install web application configured dependencies by executing below commands in web app directory in linux shell :

```sh

npm install
bower install
php composer.phar install

```

# SMWM Configuration

In app's "/app/config/config.php" file in database connection section you should put connection parameters for doomsider's database, so web app can connect to datasource.


# in Development
- ability to show details about players, ships, stations, shops, asteroids on given list,
- ability to perform actions at above objects such as : rank up, rank down, edit credits, edit bank account, ban (playername, account, IP), unban, kick, teleport, set invincible, destroy, despawn, unset invincible, set decayed, unset decayed, reset core,
- add option for local/remote server install admin authorisation for performing above tasks,


# Future plans

- allow controlling doomsiders shadow via web GUI,
- allow start/stop/restart doomsiders shadow and connected star made dedicated server via web GUI,
- admin ranks for administrative users, with configurable restricted priviledges for each rank (permission system),
- show more sophisticated stats live from starmade server (via doomsiders script), or at least update stats with configurable time interval,
- SM server faliure reporting, and logging
- keep everything in database (preferably MySQL)

# Development Branch naming and usage

Currently dev branch is dedicated to on-going developent and is considered much less stable than master branch which is dedicated to give more stable expirience in use of this software.

For fixing particular issues there are branches containing fix for given issue (name of this branch is number if issue). 



