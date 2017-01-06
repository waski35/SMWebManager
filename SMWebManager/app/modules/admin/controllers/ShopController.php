<?php

namespace SMWebManager\Modules\Admin\Controllers;

class ShopController extends ControllerBase
{
    public function listAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
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
        $this->flash->error('Invalid session');
        return false;
        
    }
    
    
}
