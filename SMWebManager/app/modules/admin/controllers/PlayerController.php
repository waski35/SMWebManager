<?php

namespace SMWebManager\Modules\Admin\Controllers;

use SMWebManager\Modules\Admin\Models\Player;

class PlayerController extends ControllerBase
{
    public function listAction()
    {
        
            $logs = Player::find(array(
                
            "order" => "LASTUPDATE DESC"
                ));
            
            $this->view->logs = $logs;
        
    }    
    
    
    
    
}