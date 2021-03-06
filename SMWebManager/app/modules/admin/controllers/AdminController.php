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
use SMWebManager\Modules\Admin\Models\ChatLog;


class AdminController extends ControllerBase
{
    public function indexAction()
    {
        
            $destroyLogs = DestroyLog::find(array(
                     "limit" => 10
            ));
            
            $lastAdmin = Player::find("RANK = 'Admiral'");
            
            $dateMonthAgo = date('Y-m-d', strtotime('-30 days'));
            $dateToday = date('Y-m-d');
            $votesLastMonth = Vote::find(array(
                "conditions" => "TIME > '".$dateMonthAgo."'"
                
            ));
            
            $playersLastMonth = Player::find(array(
                "conditions" => "LASTUPDATE > '".$dateMonthAgo."'"
                
            ));
            
            
            
            $this->view->destroylog = $destroyLogs;
            $this->view->lastadmin = $lastAdmin->getFirst()->getName();
            $this->view->votes = $votesLastMonth->count();
            $this->view->playersCount = $playersLastMonth->count();
            $this->view->uptime = '100% - test value';
            
            
            
       
    }

    public function ServerManageAction($do_action)
    {
       
        $lastServerStatus = ServerStatus::find(array(
                "order" => "TIME DESC",
                "limit" => 1
            ));
        
        $shadow_path = $this->config->path_to_shadow;
            if ($do_action == 'stop')
            {
                if ($lastServerStatus->getFirst()->getStatus() != 'Stopped' || $lastServerStatus->getFirst()->getStatus() != 'Kill')
                {
                    // perform kill
                    exec($shadow_path."/shadow.dtsd stop");
                }
            }
            else if ($do_action == 'restart')
            {
                if ($lastServerStatus->getFirst()->getStatus() != 'Stopped' || $lastServerStatus->getFirst()->getStatus() != 'Kill')
                {
                    // perform restart
                    exec($shadow_path."/shadow.dtsd restart");
                    
                }
            }
            else if ($do_action == 'start')
            {
                if ($lastServerStatus->getFirst()->getStatus() != 'Starting')
                {
                    // perform start
                    exec($shadow_path."/shadow.dtsd start");
                    
                }
                
            }
            else if ($do_action == 'backupuni')
            {
                if ($lastServerStatus->getFirst()->getStatus() != 'Starting')
                {
                    // perform backup of universe
                    exec($shadow_path."/shadow.dtsd universebackup");
                    
                }
            }
            else if ($do_action == 'updatesrv')
            {
                if ($lastServerStatus->getFirst()->getStatus() != 'Starting')
                {
                    // perform update server binaries
                    exec($shadow_path."/shadow.dtsd download");
                }
            }
            else if ($do_action == 'updateshdw')
            {
                if ($lastServerStatus->getFirst()->getStatus() != 'Starting')
                {
                    // perform update shadow
                    exec($shadow_path."/shadow.dtsd updateshadow");
                    
                }
            }
            
            
            
            
            
            
            
            $this->view->serverstatus = $lastServerStatus->getFirst();
            
            
            
    }
    
    public function ServerSettingsAction()
    {
        $shadow = $this->config->path_to_shadow;
        $instance_name = $this->config->SM_SRV_instance_name;
        $instance_port = $this->config->SM_SRV_instance_port;
        $instance_host = $this->config->SM_SRV_instance_host;
        
        $this->view->shadow = $shadow;
        $this->view->instance_name = $instance_name;
        $this->view->instance_port = $instance_port;
        $this->view->instance_host = $instance_host;
        
        
    }
    public function connectionsAction()
    {
        
    }
    
    public function connectionsAjaxAction()
    {
        
        if ($this->request->isAjax()) {
            $logs = ConnectionLog::find();
            
            //$this->view->logs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
        }
    }

    public function destroylogAction()
    {
        
    }
    public function destroylogAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = DestroyLog::find();
            
        //    $this->view->logs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
        }
        
    }
    
    public function logsAction()
    {
        
    }
    
    public function logsAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = Log::find();
            
        //    $this->view->logs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
        }
                    
        
    }    
    public function sectorsAction()
    {
        
    }
   
    
    public function sectorsAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = Sector::find();
            
         //   $this->view->logs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
        }
        
    }    
    
    public function serverstatusAction() 
    {
        
    }
    public function serverstatusAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = ServerStatus::find();
            
        //    $this->view->logs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
        }
        
    }    
    
    
    public function smranksAction()
    {
        
    }
      
    
    public function smranksAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = SmRank::find();
            
        //    $this->view->logs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
        }
        
    }

    public function adminlogsAction()
    {
        
    }
       
    
    public function adminlogsAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = AdminLog::find();
            
        //    $this->view->adminlogs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
            
        }
        
    }        
    
    public function chatlogsAction()
    {
        
    }
       
    
    public function chatlogsAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = ChatLog::find();
            
        //    $this->view->adminlogs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
            
        }
        
    }       
    
    
    public function bountiesAction()
    {
        
    }
    
    public function bountiesAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = Bounty::find();
            
        //    $this->view->logs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
        }
        
    }     
    
    public function killsAction()
    {
        
    }
    
    public function killsAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = Kills::find();
            
        //    $this->view->logs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
        }
        
    }  
    
    public function votesAction()
    {
        
    }
    
    public function votesAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = Vote::find();
            
        //    $this->view->logs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
        }
        
    }        
    
    
    
    
    
}

