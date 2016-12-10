<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class AdminLog extends Model
{
    protected $line;
    
    protected $command;
    
    protected $name;
    
    
    protected $time;
    
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
        return $this->command;
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

