<?php

namespace SMWebManager\Modules\Admin\Controllers;

use SMWebManager\Modules\Admin\Models\Asteroid;

class AsteroidController extends ControllerBase
{
    public function listAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = Asteroid::find();
            
         //   $this->view->logs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
        }
        
    }    
    
    public function listAction()
    {
        
    }
    
    public function detailsAction($line)
    {
        $logs = Asteroid::find(array(
            "conditions" => "line = ?1",
            "bind" =>  array(1 => $line)
            ));
        
        if (!$logs)
        {
            $this->dispatcher->forward(array(
                    "module"    => "admin",
                    "controller" => "asteroid",
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
                // screen -p 0 -S smscreen -X stuff "$STUFFCOMMAND" -> w lokalnym wierszu polecen wyslac to to sreena dzlajacego na tym samym userze
                // perform despawn based off name
            }
            
        }
        
        
        
        
        
        $this->view->logs = $logs->getFirst();
        
    }
    
    
    
   
    
    
}
