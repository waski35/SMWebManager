<?php

namespace SMWebManager\Modules\Admin\Controllers;

use SMWebManager\Modules\Admin\Models\Station;

class StationController extends ControllerBase
{
    public function listAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = Station::find();
            
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
        $logs = Station::find(array(
            "conditions" => "line = ?1",
            "bind" =>  array(1 => $line)
            ));
        
        if (!$logs)
        {
            $this->dispatcher->forward(array(
                    "module"    => "admin",
                    "controller" => "station",
                    "action"     => "list",
                )
                    );
        }
        if ($this->request->isPost())
        {
            $do_action = $this->request->getPost('do_action');
            $logs_name = $logs->getFirst()->getName();
            if ($do_action == "Despawn")
            {
                // perform action based off name
                exec($shadow_path."/shadow.dtsd dosafe despawn_all ".$logs_name." all false");
            }
            else 
            {
                // do nothing
            }
        }
        
        
        
        
        
        $this->view->logs = $logs->getFirst();
        
    }
    
    
}
