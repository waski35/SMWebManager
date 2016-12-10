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

$router->add('/admin/logout', [
   'module' => 'admin',
   'controller' => 'index',
   'action' => 'logout'
])->setName('admin-logout');