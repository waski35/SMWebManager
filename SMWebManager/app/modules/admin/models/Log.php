<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Log extends Model
{
    protected $line;
    
    protected $LOGDATE;
    
    protected $LOGSTRING;

    
    public function initialize()
    {
        $this->setSource("SERVERLOG");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getLogDate()
    {
        return $this->LOGDATE;
    }
    
    public function getLogString()
    {
        return $this->LOGSTRING;
    }
    
    
}

