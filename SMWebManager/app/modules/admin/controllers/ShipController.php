<?php

namespace SMWebManager\Modules\Admin\Controllers;

use SMWebManager\Modules\Admin\Models\Ship;

class ShipController extends ControllerBase
{
    public function listAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = Ship::find();
            
        //    $this->view->logs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
        }
        
    }    
    
    public function listAction()
    {
        
    }
    
    
    
    
    
    
}
