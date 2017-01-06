<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Kills extends Model
{
    protected $line;
    
    protected $KILLER;
    
    protected $KILLTIME;
    
    protected $VICTIM;

    
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
        return $this->KILLER;
    }
    
    public function getKillTime()
    {
        return $this->KILLTIME;
    }
    
    public function getVictim()
    {
        return $this->VICTIM;
    }
    
    
}

