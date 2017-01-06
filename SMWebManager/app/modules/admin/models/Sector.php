<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Sector extends Model
{
    protected $line;
    
    protected $LASTUPDATE;
    
    protected $NAME;
    
    protected $PEACE;
    
    protected $PROTECTED;
    
    protected $TYPE;
    
    public function initialize()
    {
        $this->setSource("SECTORDB");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getLastUpdate()
    {
        return $this->LASTUPDATE;
    }
    
    public function getName()
    {
        return $this->NAME;
    }
    
    public function getPeace()
    {
        return $this->PEACE;
    }
    
    public function getProtected()
    {
        return $this->PROTECTED;
    }
    
    public function getType()
    {
        return $this->TYPE;
    }
}
