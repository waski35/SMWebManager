<?php

namespace SMWebManager\Modules\Admin\Controllers;

class AdminController extends ControllerBase
{
    public function indexAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }    
    
    public function connectionsAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }

    public function destroylogAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }
    
    public function logsAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }    
    
    public function playersAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    } 
    
    public function sectorsAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }    
    
    public function serverstatusAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }    
    
    public function shipsAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }    
    
    public function shopsAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }    
    
    public function smranksAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }

    public function stationsAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }      
    
    public function adminlogsAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }        
    
    public function asteroidsAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }    

    public function bountiesAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }     
    
    public function killsAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            
        }
        
    }        
    
    public function votesAction()
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

