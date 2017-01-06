<?php

$router = $di->getRouter();

$router->add('/', array(
   'module' => 'admin',
   'controller' => 'index',
   'action' => 'index'
))->setName('index');

$router->add('/admin/index', array(
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'index'
))->setName('admin-index');

$router->add('/admin/login', array(
   'module' => 'admin',
   'controller' => 'index',
   'action' => 'login'
))->setName('admin-login');

$router->add('/admin/logout', array(
   'module' => 'admin',
   'controller' => 'index',
   'action' => 'logout'
))->setName('admin-logout');

//Admin menu links for read only tables (as of now)

$router->add('/admin/adminlog', array(
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'adminlogs'
))->setName('admin-adminlogs');

$router->add('/admin/bounties', array(
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'bounties'
))->setName('admin-bounties');

$router->add('/admin/connections', array(
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'connections'
))->setName('admin-connections');

$router->add('/admin/destroylog', array(
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'destroylog'
))->setName('admin-destroylog');

$router->add('/admin/kills', array(
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'kills'
))->setName('admin-kills');

$router->add('/admin/serverlogs', array(
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'logs'
))->setName('admin-logs');

$router->add('/admin/sectors', array(
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'sectors'
))->setName('admin-sectors');

$router->add('/admin/serverstatus', array(
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'serverstatus'
))->setName('admin-serverstatus');

$router->add('/admin/votes', array(
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'votes'
))->setName('admin-votes');

$router->add('/admin/smranks', array(
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'smranks'
))->setName('admin-smranks');

// asteroids

$router->add('/admin/asteroids', array(
   'module' => 'admin',
   'controller' => 'asteroid',
   'action' => 'list'
))->setName('admin-asteroids');



// players

$router->add('/admin/players', array(
   'module' => 'admin',
   'controller' => 'player',
   'action' => 'list'
))->setName('admin-players');



// ships

$router->add('/admin/ships', array(
   'module' => 'admin',
   'controller' => 'ship',
   'action' => 'list'
))->setName('admin-ships');

// shops
$router->add('/admin/shops', array(
   'module' => 'admin',
   'controller' => 'shop',
   'action' => 'list'
))->setName('admin-shops');



// stations

$router->add('/admin/stations', array(
   'module' => 'admin',
   'controller' => 'station',
   'action' => 'list'
))->setName('admin-stations');

