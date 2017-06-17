<?php

use Phalcon\Mvc\Dispatcher;
use Phalcon\Mvc\Router;
use Phalcon\Mvc\Url as UrlResolver;
use Phalcon\Session\Adapter\Files as SessionAdapter;
use Phalcon\Mvc\View;
use Phalcon\Mvc\View\Engine\Volt as VoltEngine;
use Phalcon\Flash\Direct as Flash;
use Phalcon\Flash\Session as FlashSession;
use Phalcon\Events\Manager as EventsManager;
use SMWebManager\Modules\Admin\Plugins\SecurityPlugin as SecurityPlugin;

/**
 * Registering a router
 */
$di->setShared('router', function () {
    $router = new Router();

    $router->setDefaultModule('admin');

    return $router;
});

/**
 * The URL component is used to generate all kinds of URLs in the application
 */
$di->setShared('url', function () {
    $config = $this->getConfig();

    $url = new UrlResolver();
    $url->setBaseUri($config->application->baseUri);

    return $url;
});

/**
 * Starts the session the first time some component requests the session service
 */
$di->setShared('session', function () {
    $session = new SessionAdapter();
    $session->start();

    return $session;
});

/**
 * Register the session flash service with the Twitter Bootstrap classes
 */


$di->set(
    "flashsession",
    function () {
        return new FlashSession(array(
        'error'   => 'alert alert-danger',
        'success' => 'alert alert-success',
        'notice'  => 'alert alert-info',
        'warning' => 'alert alert-warning'
    ));
    }
);

/**
* Set the default namespace for dispatcher
*/
$di->setShared( "dispatcher",
    function () {
        // Create an events manager
        $eventsManager = new EventsManager();

        // Listen for events produced in the dispatcher using the Security plugin
        $eventsManager->attach(
            "dispatch:beforeExecuteRoute",
            new SecurityPlugin()
        );

        $eventsManager->attach("dispatch", function($event, $dispatcher, $exception) {
          
        if ($event->getType() == 'beforeException') {
        switch ($exception->getCode()) {
            case Phalcon\Dispatcher::EXCEPTION_HANDLER_NOT_FOUND:
            case Phalcon\Dispatcher::EXCEPTION_ACTION_NOT_FOUND:
               $dispatcher->forward(array(
                  'module' => 'admin',
                   'controller' => 'index',
                   'action' => 'index'
               ));
               return false;
              }
          }
        });

        $dispatcher = new Dispatcher();

        // Assign the events manager to the dispatcher
        $dispatcher->setEventsManager($eventsManager);
        
        $dispatcher->setDefaultNamespace('SMWebManager\Modules\Admin\Controllers');
        return $dispatcher;
});
