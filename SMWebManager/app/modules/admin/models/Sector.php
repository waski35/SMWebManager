<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Sector extends Model
{
    protected $line;
    
    protected $lastupdate;
    
    protected $name;
    
    protected $peace;
    
    protected $protected;
    
    protected $type;
    
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
        return $this->lastupdate;
    }
    
    public function getName()
    {
        return $this->name;
    }
    
    public function getPeace()
    {
        return $this->peace;
    }
    
    public function getProtected()
    {
        return $this->protected;
    }
    
    public function getType()
    {
        return $this->type;
    }
}
