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

