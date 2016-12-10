# StarMade Web Manager for Phalcon PHP Framework

SMWM is a tool for Starmade Dedicated server's admins using doomsiders shadow to view server's stats, logs, and all doomsiders data in more elegant fashion than using phpmyadmin and logging into db.


# Dependencies

- doomsider's shadow (with all its dependencies, working)

- Apache 2.4
- PHP 7.0
- Phalcon 3.0.* PHP Framework
- npm, nodejs (to install project javascript dependencies)

# Installation

After installing project dependencies You need install web application configured dependencies by executing below commands in web app directory in linux shell :

```sh

npm install
bower install

```

# SMWM Configuration

In app's "/app/config/config.php" file in database connection section you should put connection parameters for doomsider's database, so web app can connect to datasource.




# Future plans

- allow controlling doomsiders shadow via web GUI,
- allow start/stop/restart doomsiders shadow and connected star made dedicated server via web GUI,
- admin ranks for administrative users, with configurable restricted priviledges for each rank (permission system),
- show more sophisticated stats live from starmade server (via doomsiders script), or at least update stats with configurable time interval,
- SM server faliure reporting, and logging
- keep everything in database (preferably MySQL)




