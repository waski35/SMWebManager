<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class DestroyLog extends Model
{
    protected $line;
    
    protected $name;
    
    protected $type;
    
    protected $destroytime;
    
    public function initialize()
    {
        $this->setSource("DESTROYLOG");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getType()
    {
        return $this->type;
    }
    
    public function getName()
    {
        return $this->name;
    }
    
        
    public function getDestroyTime()
    {
        return $this->destroytime;
    }
}