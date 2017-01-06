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
        
            $destroyLogs = DestroyLog::find(array(
                "order" => "DESTROYTIME DESC",
                "limit" => 10,
            ));
            
            $lastAdmin = Player::find(array(
                "order" => "LASTUPDATE DESC",
                "conditions" => "RANK LIKE 'Admiral'",
                
            ));
            
            $dateMonthAgo = date('Y-m-d', strtotime('-30 days'));
            $dateToday = date('Y-m-d');
            $votesLastMonth = Vote::find(array(
                "conditions" => "TIME > '".$dateMonthAgo."'"
                
            ));
            
            $playersLastMonth = Player::find(array(
                "conditions" => "LASTUPDATE > '".$dateMonthAgo."'"
                
            ));
            
            
            $this->view->destroylog = $destroyLogs;
            $this->view->lastadmin = $lastAdmin;
            $this->view->votes = $votesLastMonth->count();
            $this->view->playersCount = $playersLastMonth->count();
            $this->view->uptime = '100% - test value';
            
            
            
       
    }

    public function ServerManageAction($action)
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
    
    public function ServerSettingsAction()
    {
        
    }
    
    public function connectionsAction()
    {
        
            $logs = ConnectionLog::find();
            
            $this->view->logs = $logs;
        
        
    }

    public function destroylogAction()
    {
        
            $logs = DestroyLog::find();
            
            $this->view->logs = $logs;
        
    }
    
    public function logsAction()
    {
        
            $logs = Log::find();
            
            $this->view->logs = $logs;
        
    }    
    
   
    
    public function sectorsAction()
    {
        
            $logs = Sector::find();
            
            $this->view->logs = $logs;
        
        
    }    
    
    public function serverstatusAction()
    {
        
            $logs = ServerStatus::find();
            
            $this->view->logs = $logs;
        
    }    
    
    
    
      
    
    public function smranksAction()
    {
        
            $logs = SmRank::find();
            
            $this->view->logs = $logs;
        
    }

       
    
    public function adminlogsAction()
    {
        
            $logs = AdminLog::find();
            
            $this->view->adminlogs = $logs;
            
        
        
    }        
    
    
    public function bountiesAction()
    {
        
            $logs = Bounty::find();
            
            $this->view->logs = $logs;
        
    }     
    
    public function killsAction()
    {
        
            $logs = Kills::find();
            
            $this->view->logs = $logs;
        
    }        
    
    public function votesAction()
    {
        
            $logs = Vote::find();
            
            $this->view->logs = $logs;
        
    }        
    
    
    
    
    
}

