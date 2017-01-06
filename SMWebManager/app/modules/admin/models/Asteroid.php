<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Asteroid extends Model
{
    protected $line;
    
    protected $CURRENTSECTOR;
    
    protected $LASTPOSITION;
    
    protected $NAME;

    
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
        return $this->CURRENTSECTOR;
    }
    
    public function getName()
    {
        return $this->NAME;
    }
    
    public function getLastPosition()
    {
        return $this->LASTPOSITION;
    }
    
   
}


