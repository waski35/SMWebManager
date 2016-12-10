<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Kills extends Model
{
    protected $line;
    
    protected $killer;
    
    protected $killtime;
    
    protected $victim;

    
    public function initialize()
    {
        $this->setSource("KILLDB");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getKiller()
    {
        return $this->killer;
    }
    
    public function getKillTime()
    {
        return $this->killtime;
    }
    
    public function getVictim()
    {
        return $this->victim;
    }
    
    
}

