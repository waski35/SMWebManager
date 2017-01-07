<?php

namespace SMWebManager\Modules\Admin\Controllers;

use SMWebManager\Modules\Admin\Models\Shop;

class ShopController extends ControllerBase
{
    public function listAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = Shop::find();
            
        //    $this->view->logs = $logs;
            $dataTables = new \DataTables\DataTable();
            $dataTables->fromResultSet($logs)->sendResponse();
        }
    }    
    
    public function listAction()
    {
        
    }
    
    
    
    
    
    
}
