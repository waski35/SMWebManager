<?php

namespace SMWebManager\Modules\Admin\Controllers;

use SMWebManager\Modules\Admin\Models\Station;

class StationController extends ControllerBase
{
    public function listAction()
    {
        
            $logs = Station::find();
            
            $this->view->logs = $logs;
        
    }    
    
    
    
    
    
    
}
