<?php

namespace SMWebManager\Modules\Admin\Controllers;

use SMWebManager\Modules\Admin\Models\Player;
use SMWebManager\Modules\Admin\Models\SmRank;

class PlayerController extends ControllerBase
{
    public function listAjaxAction()
    {
        if ($this->request->isAjax()) {
            $logs = Player::find(array(
                
            "order" => "LASTUPDATE DESC"
                ));
            
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
        $logs = Player::find(array(
            "conditions" => "line = ?1",
            "bind" =>  array(1 => $line)
            ));
        
        $shadow_path = $this->config->path_to_shadow;
        
        if (!$logs)
        {
            $this->dispatcher->forward(array(
                    "module"    => "admin",
                    "controller" => "player",
                    "action"     => "list",
                )
                    );
        }
        if ($this->request->isPost())
        {
            $do_action = $this->request->getPost('do_action');
            $logs_name = $logs->getFirst()->getName();
            if ($do_action == "Kill")
            {
                // perform action based off name
                //exec($shadow_path.'/shadow.dtsd dosafe "/kill_character '.$logs_name.'"');
                //exec("screen -p 0 -S smscreen -X stuff '/kill_character ".$logs_name."'"); // -> w lokalnym wierszu polecen wyslac to to sreena dzlajacego na tym samym userze
                exec('screen -p 0 -S smscreen -X stuff "/kill_character \''.$logs_name.'\' "\'\n\'');
                
            }
            else if ($do_action == 'Ban')
            {
                //exec($shadow_path.'/shadow.dtsd dosafe "/ban_account_by_playername '.$logs_name.'"');
                //exec("screen -p 0 -S smscreen -X stuff '/ban_account_by_playername ".$logs_name."'");
                exec('screen -p 0 -S smscreen -X stuff "/ban_account_by_playername \''.$logs_name.'\' "\'\n\'');
                
            }
            else if ($do_action == 'Kick')
            {
                //exec($shadow_path.'/shadow.dtsd dosafe "/kick_reason '.$logs_name. ' kick"');
                //exec("screen -p 0 -S smscreen -X stuff '/kick_reason ".$logs_name."'");
                exec('screen -p 0 -S smscreen -X stuff "/kick_reason \''.$logs_name.'\' kick"\'\n\'');
            }
            else if ($do_action == 'Save')
            {
                $newRank = $this->request->getPost('rank');
                
                if (in_array($newRank, $this->getRanks()))
                {
                    exec($shadow_path.'/shadow.dtsd changerank '.$logs_name. ' '.$newRank);
                }
            }
            else if ($do_action == 'Give Credits')
            {
                //exec($shadow_path.'/shadow.dtsd dosafe "/give_credits '.$logs_name. ' 1000000"');
                //exec("screen -p 0 -S smscreen -X stuff '/give_credits ".$logs_name." 1000000'");
                exec('screen -p 0 -S smscreen -X stuff "/give_credits \''.$logs_name.'\' 1000000"\'\n\'');
            }
            else if ($do_action == 'Set Invincible')
            {
                //exec($shadow_path.'/shadow.dtsd dosafe "/god_mode '.$logs_name. ' true"');
                //exec("screen -p 0 -S smscreen -X stuff '/give_credits ".$logs_name." 1000000'");
                exec('screen -p 0 -S smscreen -X stuff "/god_mode \''.$logs_name.'\' true"\'\n\'');
            }
            else if ($do_action == 'UnSet Invincible')
            {
                //exec($shadow_path.'/shadow.dtsd dosafe "/god_mode '.$logs_name. ' false"');
                //exec("screen -p 0 -S smscreen -X stuff '/give_credits ".$logs_name." 1000000'");
                exec('screen -p 0 -S smscreen -X stuff "/god_mode \''.$logs_name.'\' false"\'\n\'');
            }
            else if ($do_action == 'Whitelist')
            {
                //exec($shadow_path.'/shadow.dtsd dosafe "/whitelist_name '.$logs_name.'"');
                //exec("screen -p 0 -S smscreen -X stuff '/give_credits ".$logs_name." 1000000'");
                exec('screen -p 0 -S smscreen -X stuff "/whitelist_name \''.$logs_name.'\' "\'\n\'');
            }
            else if ($do_action == 'Unban')
            {
                //exec($shadow_path.'/shadow.dtsd dosafe "/unban_account '.$logs_name.'"');
                //exec("screen -p 0 -S smscreen -X stuff '/give_credits ".$logs_name." 1000000'");
                exec('screen -p 0 -S smscreen -X stuff "/unban_account \''.$logs_name.'\' "\'\n\'');
            }
            else 
            {
                // do nothing
            }
            $logs = Player::find(array(
            "conditions" => "line = ?1",
            "bind" =>  array(1 => $line)
            ));
        }
        
        
        
        
        
        $this->view->logs = $logs->getFirst();
        $this->view->ranks = $this->getRanks();
        
    }
    
    protected function getRanks()
    {
        $ranks = SmRank::find();
        
        if ($ranks == null)
        {
            return null;
        }

        $rankNames = array();
        foreach($ranks as $rank)
        {
            $rankNames[] = $rank->getName();
        }
        
        return $rankNames;
    }
    
    
    
}