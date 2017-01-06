<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Vote extends Model
{
    protected $line;
    
    protected $INFO;
    
    protected $NAME;
    
    protected $TIME;
    
    public function initialize()
    {
        $this->setSource("VOTELOG");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getInfo()
    {
        return $this->INFO;
    }
    
    public function getName()
    {
        return $this->NAME;
    }
    
        
    public function getTime()
    {
        return $this->TIME;
    }
}

