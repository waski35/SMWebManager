<?php

use Phalcon\Loader;

$loader = new Loader();

/**
 * Register Namespaces
 */
$loader->registerNamespaces(array(
    'SMWebManager\Models' => APP_PATH . '/common/models/',
    'SMWebManager\Library'        => APP_PATH . '/common/library/',
    'DataTables' => __DIR__ . '/../../vendor/m1ome/phalcon-datatables/src/',
    
));

/**
 * Register module classes
 */
$loader->registerClasses(array(
    'SMWebManager\Modules\Admin\Module' => APP_PATH . '/modules/admin/Module.php',
    'SMWebManager\Modules\Cli\Module'      => APP_PATH . '/modules/cli/Module.php'
));

$loader->register();
