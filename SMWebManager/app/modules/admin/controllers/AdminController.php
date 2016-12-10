<?php

namespace SMWebManager\Modules\Admin\Controllers;

class IndexController extends ControllerBase
{
    public function indexAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }    
       
    protected function checkAuth()
    {
        $login = $this->session->auth->name;
        $passMd5 = $this->session->auth->pass;
        
        if (md5($this->config->user->$login->password) == $passMd5)
        {
            return true;
        }
        $this->session->destroy();
        $this->response->redirect(array("for" => "index"));
        $this->flash->error('Invalid session');
        return false;
        
    }
    
    
}

