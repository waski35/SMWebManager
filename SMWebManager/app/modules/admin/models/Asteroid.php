<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Asteroid extends Model
{
    protected $line;
    
    protected $currentsector;
    
    protected $lastposition;
    
    protected $name;

    
    public function initialize()
    {
        $this->setSource("ASTEROIDDB");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getCurrentSector()
    {
        return $this->currentsector;
    }
    
    public function getName()
    {
        return $this->name;
    }
    
    public function getLastPosition()
    {
        return $this->lastposition;
    }
    
   
}


