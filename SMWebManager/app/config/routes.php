<?php

$router = $di->getRouter();

$router->notFound(array(
    
    "module" => "admin",
    "controller" => "index",
    "action"     => "index",
    )
);

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

$router->add('/admin/servermanage/{do_action}', array (
    'module' => 'admin',
    'controller' => 'admin',
    'action' => 'servermanage'
))->setName('admin-server-management');



$router->add('/admin/serversettings', array (
    'module' => 'admin',
    'controller' => 'admin',
    'action' => 'serversettings'
))->setName('admin-server-settings');

// asteroids

$router->add('/admin/asteroid/list', array(
   'module' => 'admin',
   'controller' => 'asteroid',
   'action' => 'list'
))->setName('admin-asteroids');

$router->add('/admin/asteroid/listAjax', array(
    'module' => 'admin',
    'controller' => 'asteroid',
    'action' => 'listAjax'
))->setName('admin-asteroid-listAjax');

$router->add('/admin/asteroid/details/{line}', array(
   'module' => 'admin',
   'controller' => 'asteroid',
   'action' => 'details'
))->setName('admin-asteroid-details');



// players

$router->add('/admin/player/list', array(
   'module' => 'admin',
   'controller' => 'player',
   'action' => 'list'
))->setName('admin-players');

$router->add('/admin/player/listAjax', array(
    'module' => 'admin',
    'controller' => 'player',
    'action' => 'listAjax'
))->setName('admin-player-listAjax');

$router->add('/admin/player/details/{line}', array(
   'module' => 'admin',
   'controller' => 'player',
   'action' => 'details'
))->setName('admin-player-details');



// ships

$router->add('/admin/ship/list', array(
   'module' => 'admin',
   'controller' => 'ship',
   'action' => 'list'
))->setName('admin-ships');

$router->add('/admin/ship/listAjax', array(
    'module' => 'admin',
    'controller' => 'ship',
    'action' => 'listAjax'
))->setName('admin-ship-listAjax');

$router->add('/admin/ship/details/{link}', array(
   'module' => 'admin',
   'controller' => 'ship',
   'action' => 'details'
))->setName('admin-ship-details');

// shops
$router->add('/admin/shop/list', array(
   'module' => 'admin',
   'controller' => 'shop',
   'action' => 'list'
))->setName('admin-shops');

$router->add('/admin/shop/listAjax', array(
    'module' => 'admin',
    'controller' => 'shop',
    'action' => 'listAjax'
))->setName('admin-shop-listAjax');

$router->add('/admin/shop/details/{link}', array(
   'module' => 'admin',
   'controller' => 'shop',
   'action' => 'details'
))->setName('admin-shop-details');



// stations

$router->add('/admin/station/list', array(
   'module' => 'admin',
   'controller' => 'station',
   'action' => 'list'
))->setName('admin-stations');

$router->add('/admin/station/listAjax', array(
    'module' => 'admin',
    'controller' => 'station',
    'action' => 'listAjax'
))->setName('admin-station-listAjax');

$router->add('/admin/station/details/{link}', array(
   'module' => 'admin',
   'controller' => 'station',
   'action' => 'details'
))->setName('admin-station-details');

