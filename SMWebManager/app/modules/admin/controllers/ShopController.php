<?php

namespace SMWebManager\Modules\Admin\Controllers;

use SMWebManager\Modules\Admin\Models\Shop;

class ShopController extends ControllerBase
{
    public function listAction()
    {
        
            $logs = Shop::find();
            
            $this->view->logs = $logs;
        
    }    
    
    
    
    
    
    
}
