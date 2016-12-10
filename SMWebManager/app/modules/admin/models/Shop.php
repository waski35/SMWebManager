<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Shop extends Model
{
    protected $line;
    
    protected $currentsector;
    
    protected $name;
    
       
    public function initialize()
    {
        $this->setSource("SHOPDB");
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
    
    
}

