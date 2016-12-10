<?php

$router = $di->getRouter();

$router->add('/', [
   'module' => 'admin',
   'controller' => 'index',
   'action' => 'index'
])->setName('index');

$router->add('/admin/index', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'index'
])->setName('admin-index');

$router->add('/admin/login', [
   'module' => 'admin',
   'controller' => 'index',
   'action' => 'login'
])->setName('admin-login');

$router->add('/admin/logout', [
   'module' => 'admin',
   'controller' => 'index',
   'action' => 'logout'
])->setName('admin-logout');

//Admin menu links

$router->add('/admin/adminlog', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'adminlogs'
])->setName('admin-adminlogs');

$router->add('/admin/asteroids', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'asteroids'
])->setName('admin-asteroids');

$router->add('/admin/bounties', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'bounties'
])->setName('admin-bounties');

$router->add('/admin/connections', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'connections'
])->setName('admin-connections');

$router->add('/admin/destroylog', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'destroylog'
])->setName('admin-destroylog');

$router->add('/admin/kills', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'kills'
])->setName('admin-kills');

$router->add('/admin/serverlogs', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'logs'
])->setName('admin-logs');

$router->add('/admin/players', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'players'
])->setName('admin-players');

$router->add('/admin/sectors', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'sectors'
])->setName('admin-sectors');

$router->add('/admin/serverstatus', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'serverstatus'
])->setName('admin-serverstatus');

$router->add('/admin/ships', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'ships'
])->setName('admin-ships');

$router->add('/admin/shops', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'shops'
])->setName('admin-shops');

$router->add('/admin/smranks', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'smranks'
])->setName('admin-smranks');

$router->add('/admin/stations', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'stations'
])->setName('admin-stations');

$router->add('/admin/votes', [
   'module' => 'admin',
   'controller' => 'admin',
   'action' => 'votes'
])->setName('admin-votes');