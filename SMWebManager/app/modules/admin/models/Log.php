<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class Log extends Model
{
    protected $line;
    
    protected $logdate;
    
    protected $logstring;

    
    public function initialize()
    {
        $this->setSource("GUESTBOOK");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getLogDate()
    {
        return $this->logdate;
    }
    
    public function getLogString()
    {
        return $this->logstring;
    }
    
    
}

