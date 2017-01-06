<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class SmRank extends Model
{
    protected $line;
    
    protected $COMMANDSALLOWED;
    
    protected $NAME;
    
    
    
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
        return $this->COMMANDSALLOWED;
    }
    
    public function getName()
    {
        return $this->NAME;
    }
    
    
}

