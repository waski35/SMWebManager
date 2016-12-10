<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class SmRank extends Model
{
    protected $line;
    
    protected $commandsallowed;
    
    protected $name;
    
    
    
    public function initialize()
    {
        $this->setSource("RANKLOG");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getCommandsAlowed()
    {
        return $this->commandsallowed;
    }
    
    public function getName()
    {
        return $this->name;
    }
    
    
}

