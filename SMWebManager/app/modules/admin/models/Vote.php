<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Vote extends Model
{
    protected $line;
    
    protected $info;
    
    protected $name;
    
    protected $time;
    
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
        return $this->info;
    }
    
    public function getName()
    {
        return $this->name;
    }
    
        
    public function getTime()
    {
        return $this->time;
    }
}

