<?php

namespace SMWebManager\Modules\Admin\Controllers;

use SMWebManager\Modules\Admin\Models\AdminLog;
use SMWebManager\Modules\Admin\Models\ConnectionLog;
use SMWebManager\Modules\Admin\Models\SmRank;
use SMWebManager\Modules\Admin\Models\DestroyLog;
use SMWebManager\Modules\Admin\Models\Log;
use SMWebManager\Modules\Admin\Models\Sector;
use SMWebManager\Modules\Admin\Models\ServerStatus;
use SMWebManager\Modules\Admin\Models\Bounty;
use SMWebManager\Modules\Admin\Models\Kills;
use SMWebManager\Modules\Admin\Models\Vote;
use SMWebManager\Modules\Admin\Models\Player;

class AdminController extends ControllerBase
{
    public function indexAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            $destroyLogs = DestroyLog::find(array(
                "order" => "destroytime",
                "limit" => 10,
            ));
            
            $lastAdmin = Player::find(array(
                "order" => "online",
                "conditions" => "rank = Admiral",
                "limit" => 1,
            ));
            
            $votesLastMonth = Vote::find(array(
                "conditions" => "time BETWEEN DATE_SUB(NOW(), INTERVAL 30 DAY) AND NOW()"
                
            ));
            
            $playersLastMonth = Player::find(array(
                "conditions" => "online BETWEEN DATE_SUB(NOW(), INTERVAL 30 DAY) AND NOW()"
                
            ));
            
            
            $this->view->destroylog = $destroyLogs;
            $this->view->lastadmin = $lastAdmin;
            $this->view->votes = $votesLastMonth->count();
            $this->view->playersCount = $playersLastMonth->count();
            $this->view->uptime = '100% - test value';
            
            
            
        }
        
    }

    public function ServerManageAction($action)
    {
        if ($this->checkAuth()) // check if auth session is OK and user is properly authenicated
        {
            if ($action == 'kill')
            {
                
            }
            else if ($action == 'restart')
            {
                
            }
            else if ($action == 'start')
            {
                
            }
            else if ($action == 'backupuni')
            {
                
            }
            else if ($action == 'updatesrv')
            {
                
            }
            else if ($action == 'updateshdw')
            {
                
            }
            
            $lastServerStatus = ServerStatus::find(array(
                "order" => "time",
                "limit" => 1
            ));
            
            $this->view->serverstatus = $lastServerStatus;
            
            
            
        }
    }
    
    public function ServerSettingsAction()
    {
        if ($this->checkAuth()) // check if auth session is OK and user is properly authenicated
        {
            
            
        }
    }
    
    public function connectionsAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            $logs = ConnectionLog::find();
            
            $this->view->logs = $logs;
        }
        
    }

    public function destroylogAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            $logs = DestroyLog::find();
            
            $this->view->logs = $logs;
        }
        
    }
    
    public function logsAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            $logs = Log::find();
            
            $this->view->logs = $logs;
        }
        
    }    
    
   
    
    public function sectorsAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            $logs = Sector::find();
            
            $this->view->logs = $logs;
        }
        
    }    
    
    public function serverstatusAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            $logs = ServerStatus::find();
            
            $this->view->logs = $logs;
        }
        
    }    
    
    
    
      
    
    public function smranksAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            $logs = SmRank::find();
            
            $this->view->logs = $logs;
        }
        
    }

       
    
    public function adminlogsAction()
    {
        if ($this->checkAuth()) // check if auth session is OK and user is properly authenicated
        {
            $logs = AdminLog::find();
            
            $this->view->adminlogs = $logs;
            
            
        }
        
    }        
    
    
    public function bountiesAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            $logs = Bounty::find();
            
            $this->view->logs = $logs;
        }
        
    }     
    
    public function killsAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            $logs = Kills::find();
            
            $this->view->logs = $logs;
        }
        
    }        
    
    public function votesAction()
    {
        if ($this->checkAuth()) // chack if auth session is OK and user is properly authenicated
        {
            $logs = Vote::find();
            
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

