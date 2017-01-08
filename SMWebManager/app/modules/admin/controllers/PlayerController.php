<?php

namespace SMWebManager\Modules\Admin\Controllers;

use SMWebManager\Modules\Admin\Models\Player;

class PlayerController extends ControllerBase
{
    public function listAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = Player::find(array(
                
            "order" => "LASTUPDATE DESC"
                ));
            
        //    $this->view->logs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
        }
        
    } 
    
    public function listAction()
    {
        
    }
    
     public function detailsAction($line)
    {
        $logs = Player::find(array(
            "conditions" => "line = ?1",
            "bind" =>  array(1 => $line)
            ));
        
        if (!$logs)
        {
            $this->dispatcher->forward(array(
                    "module"    => "admin",
                    "controller" => "player",
                    "action"     => "list",
                )
                    );
        }
        if ($this->request->isPost())
        {
            $do_action = $this->request->getPost('do_action');
            $logs_name = $logs->getFirst()->getName();
            if ($do_action == "Kill")
            {
                // perform action based off name
                
            }
            else if ($do_action == 'Ban')
            {
                
            }
            else if ($do_action == 'Kick')
            {
                
            }
            else if ($do_action == 'Rank Up')
            {
                
            }
            else if ($do_action == 'Rank Down')
            {
                
            }
            else if ($do_action == 'Give Credits')
            {
                
            }
            else 
            {
                // do nothing
            }
        }
        
        
        
        
        
        $this->view->logs = $logs->getFirst();
        
    }
    
    
    
    
}