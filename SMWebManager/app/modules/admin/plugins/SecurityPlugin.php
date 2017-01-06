<?php

namespace SMWebManager\Modules\Admin\Plugins;

use Phalcon\Acl;
use Phalcon\Events\Event;
use Phalcon\Mvc\User\Plugin;
use Phalcon\Mvc\Dispatcher;

class SecurityPlugin extends Plugin
{
    // ...

    public function beforeExecuteRoute(Event $event, Dispatcher $dispatcher)
    {
        // Check whether the "auth" variable exists in session to define the active role
        $auth = $this->session->get("auth");

        if (!$auth) {
            $role = "USER_ROLE_GUEST";
        } else {
            $role = $auth['role'];
        }

        // Take the active controller/action from the dispatcher
        $controller = $dispatcher->getControllerName();
        $action     = $dispatcher->getActionName();

        

        // Check if the Role have access to the controller (resource)
        $allowed = $this->isAllowed($role, $controller, $action);

        if (!$allowed) {
            // If he doesn't have access forward him to the index controller
            $this->flashsession->error(
                "You don't have access to this module"
            );

            $dispatcher->forward(
                [
                    "controller" => "index",
                    "action"     => "index",
                ]
            );

            // Returning "false" we tell to the dispatcher to stop the current operation
            return false;
        }
    }
    
    protected function isAllowed($role, $controller, $action)
    {
        $config = $this->getDI()->get('config');
        
        foreach ($config->permissions->$role->$controller as $ctrl)
        {
            foreach ($ctrl as $val)
            {
                if ($val == $action)
                {
                    return true;
                }
            }
        }
        return false;
    }
}

