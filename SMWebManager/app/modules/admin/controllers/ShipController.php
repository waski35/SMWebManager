<?php

namespace SMWebManager\Modules\Admin\Controllers;

use SMWebManager\Modules\Admin\Models\Ship;

class ShipController extends ControllerBase
{
    public function listAction()
    {
        
            $logs = Ship::find();
            
            $this->view->logs = $logs;
        
    }    
    
    
    
    
    
    
}
