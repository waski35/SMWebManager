<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class ServerStatus extends Model
{
    protected $line;
    
    protected $STATUS;
    
    protected $TIME;
    
    public function initialize()
    {
        $this->setSource("SERVERSTATUS");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getStatus()
    {
        return $this->STATUS;
    }
    
    public function getTime()
    {
        return $this->TIME;
    }
}

