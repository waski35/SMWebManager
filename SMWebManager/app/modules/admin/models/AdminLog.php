<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class AdminLog extends Model
{
    protected $line;
    
    protected $COMMAND;
    
    protected $NAME;
    
    
    protected $TIME;
    
    public function initialize()
    {
        $this->setSource("ADMINLOG");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getCommand()
    {
        return $this->COMMAND;
    }
    
    public function getName()
    {
        return $this->NAME;
    }
    
       
    public function getTime()
    {
        return $this->TIME;
;
    }
}

