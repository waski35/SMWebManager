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
    
    
    
   
    
    
}
