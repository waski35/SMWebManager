<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Bounty extends Model
{
    protected $line;
    
    protected $bounty;
    
    protected $deaths;
    
    protected $killedby;
    
    protected $kills;
    
    protected $lastkill;
    
    protected $name;
    
    public function initialize()
    {
        $this->setSource("BOUNTYDB");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getBounty()
    {
        return $this->bounty;
    }
    
    public function getName()
    {
        return $this->name;
    }
    
    public function getDeaths()
    {
        return $this->deaths;
    }
    
    public function getKilledBy()
    {
        return $this->killedby;
    }
    
    public function getKills()
    {
        return $this->kills;
    }
    
    public function getLastKill()
    {
        return $this->lastkill;
    }
}


