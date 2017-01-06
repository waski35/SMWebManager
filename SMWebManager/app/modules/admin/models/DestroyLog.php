<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class DestroyLog extends Model
{
    protected $line;
    
    protected $NAME;
    
    protected $TYPE;
    
    protected $DESTROYTIME;
    
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
        return $this->TYPE;
    }
    
    public function getName()
    {
        return $this->NAME;
    }
    
        
    public function getDestroyTime()
    {
        return $this->DESTROYTIME;
    }
}