<?php

namespace SMWebManager\Modules\Admin\Controllers;

use SMWebManager\Modules\Admin\Models\Player;

class PlayerController extends ControllerBase
{
    public function listAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            $logs = Player::find();
            
            $this->view->logs = $logs;
        }
        
    }    
    
    
    
    protected function checkAuth()
    {
        $auth = $this->session->get("auth");
        $login = $auth['name'];
        $passMd5 = $auth['pass'];
        
        if (md5($this->config->user->$login->password) == $passMd5)
        {
            return true;
        }
        
        $this->view->disable();
        $this->session->destroy();
        $this->response->redirect(array("for" => "index"));
        $this->flashsession->error('Invalid session');
        return false;
        
    }
}