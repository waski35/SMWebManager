<?php
namespace SMWebManager\Modules\Admin;

use Phalcon\DiInterface;
use Phalcon\Loader;
use Phalcon\Mvc\View;
use Phalcon\Mvc\View\Engine\Php as PhpEngine;
use Phalcon\Mvc\ModuleDefinitionInterface;

class Module implements ModuleDefinitionInterface
{
    /**
     * Registers an autoloader related to the module
     *
     * @param DiInterface $di
     */
    public function registerAutoloaders(DiInterface $di = null)
    {
        $loader = new Loader();

        $loader->registerNamespaces(array(
            'SMWebManager\Modules\Admin\Controllers' => __DIR__ . '/controllers/',
            'SMWebManager\Modules\Admin\Models' => __DIR__ . '/models/',
            'SMWebManager\Modules\Admin\Plugins'      => __DIR__ . '/plugins/',
        ));

        $loader->register();
    }

    /**
     * Registers services related to the module
     *
     * @param DiInterface $di
     */
    public function registerServices(DiInterface $di)
    {
        /**
         * Setting up the view component
         */
        $di->set('view', function () {
            $view = new View();
            $view->setDI($this);
            $view->setViewsDir(__DIR__ . '/views/');

            $view->registerEngines(array(
                '.volt'  => 'voltShared',
                '.phtml' => PhpEngine::class
            ));

            return $view;
        });
    }
}
