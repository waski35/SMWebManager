<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Bounty extends Model
{
    protected $line;
    
    protected $BOUNTY;
    
    protected $DEATHS;
    
    protected $KILLEDBY;
    
    protected $KILLS;
    
    protected $LASTKILL;
    
    protected $NAME;
    
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
        return $this->BOUNTY;
    }
    
    public function getName()
    {
        return $this->NAME;
    }
    
    public function getDeaths()
    {
        return $this->DEATHS;
    }
    
    public function getKilledBy()
    {
        return $this->KILLEDBY;
    }
    
    public function getKills()
    {
        return $this->KILLS;
    }
    
    public function getLastKill()
    {
        return $this->LASTKILL;
    }
}


