<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Station extends Model
{
    protected $line;
    
    protected $ATTACHED;
    
    protected $BLOCK;
    
    protected $CREATOR;
    
    protected $CURRENTSECTOR;
    
    protected $DOCKED;
    
    protected $ENTITYTYPE;
    
    protected $FACTION;
    
    protected $LASTCONTROLLER;
    
    protected $LASTPOSITIONS;
    
    protected $MASS;
    
    protected $NAME;
    

    
    public function initialize()
    {
        $this->setSource("STATIONDB");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getAttached()
    {
        return $this->ATTACHED;
    }
    
    public function getName()
    {
        return $this->NAME;
    }
    
    public function getBlock()
    {
        return $this->BLOCK;
    }
    
    public function getCreator()
    {
        return $this->CREATOR;
    }
    
    public function getCurrentSector()
    {
        return $this->CURRENTSECTOR;
    }
    
    public function getDocked()
    {
        return $this->DOCKED;
    }
    
    public function getEntityType()
    {
        return $this->ENTITYTYPE;
    }
    
    public function getFaction()
    {
        return $this->FACTION;
    }
    
    public function getLastController()
    {
        return $this->LASTCONTROLLER;
    }
    
    public function getLastPosition()
    {
        return $this->LASTPOSITION;
    }
    

    
    public function getMass()
    {
        return $this->MASS;
    }
}

