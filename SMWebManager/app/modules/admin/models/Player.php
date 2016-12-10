<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Player extends Model
{
    protected $line;
    
    protected $bankcredits;
    
    protected $controlling;
    
    protected $controltype;
    
    protected $credits;
    
    protected $currentip;
    
    protected $currentsector;
    
    protected $faction;
    
    protected $lastcore;
    
    protected $lastposition;
    
    protected $lastupdate;
    
    protected $name;
    
    protected $online;
    
    protected $rank;
    
    public function initialize()
    {
        $this->setSource("PLAYERDB");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getBankCredits()
    {
        return $this->bankcredits;
    }
    
    public function getControlling()
    {
        return $this->controlling;
    }
    
    public function getControlType()
    {
        return $this->controltype;
    }
    
    public function getCredits()
    {
        return $this->credits;
    }
    
    public function getCurrentIp()
    {
        return $this->currentip;
    }
    
    public function getCurrentSector()
    {
        return $this->currentsector;
    }
    
    public function getFaction()
    {
        return $this->faction;
    }
    
    public function getLastCore()
    {
        return $this->lastcore;
    }
    
    public function getLastPosition()
    {
        return $this->lastposition;
    }
    
    public function getLastUpdate()
    {
        return $this->lastupdate;
    }
    
    public function getName()
    {
        return $this->name;
    }
    
    public function getOnLine()
    {
        return $this->online;
    }
    
    public function getRank()
    {
        return $this->rank;
    }
}

