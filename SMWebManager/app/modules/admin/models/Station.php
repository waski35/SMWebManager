<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Station extends Model
{
    protected $line;
    
    protected $attached;
    
    protected $block;
    
    protected $creator;
    
    protected $currentsector;
    
    protected $docked;
    
    protected $entitytype;
    
    protected $faction;
    
    protected $lastcontroller;
    
    protected $lastposition;
    
    protected $mass;
    
    protected $name;
    

    
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
        return $this->attached;
    }
    
    public function getName()
    {
        return $this->name;
    }
    
    public function getBlock()
    {
        return $this->block;
    }
    
    public function getCreator()
    {
        return $this->creator;
    }
    
    public function getCurrentSector()
    {
        return $this->currentsector;
    }
    
    public function getDocked()
    {
        return $this->docked;
    }
    
    public function getEntityType()
    {
        return $this->entitytype;
    }
    
    public function getFaction()
    {
        return $this->faction;
    }
    
    public function getLastController()
    {
        return $this->lastcontroller;
    }
    
    public function getLastPosition()
    {
        return $this->lastposition;
    }
    

    
    public function getMass()
    {
        return $this->mass;
    }
}

