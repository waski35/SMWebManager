<?php

namespace SMWebManager\Modules\Admin\Controllers;

use SMWebManager\Modules\Admin\Models\Asteroid;

class AsteroidController extends ControllerBase
{
    public function listAction()
    {
       
            $logs = Asteroid::find();
            
            $this->view->logs = $logs;
        
    }    
    
    
    
   
    
    
}
