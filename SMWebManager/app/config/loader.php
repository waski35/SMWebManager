<?php

use Phalcon\Loader;

$loader = new Loader();

/**
 * Register Namespaces
 */
$loader->registerNamespaces([
    'SMWebManager\Models' => APP_PATH . '/common/models/',
    'SMWebManager'        => APP_PATH . '/common/library/',
]);

/**
 * Register module classes
 */
$loader->registerClasses([
    'SMWebManager\Modules\Admin\Module' => APP_PATH . '/modules/admin/Module.php',
    'SMWebManager\Modules\Cli\Module'      => APP_PATH . '/modules/cli/Module.php'
]);

$loader->register();