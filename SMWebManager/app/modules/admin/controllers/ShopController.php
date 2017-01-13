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
    
    public function detailsAction($line)
    {
        $logs = Shop::find(array(
            "conditions" => "line = ?1",
            "bind" =>  array(1 => $line)
            ));
        
        $shadow_path = $this->config->path_to_shadow;
        
        if (!$logs)
        {
            $this->dispatcher->forward(array(
                    "module"    => "admin",
                    "controller" => "shop",
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
                exec($shadow_path.'/shadow.dtsd dosafe "/destroy_uid ENTITY_SHOP_'.$logs_name.'"');
            }
            else 
            {
                // do nothing
            }
        }
        
        
        
        
        
        $this->view->logs = $logs->getFirst();
        
    }
    
    
    
    
}
