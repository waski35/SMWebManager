<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class ServerStatus extends Model
{
    protected $line;
    
    protected $status;
    
    protected $time;
    
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
        return $this->status;
    }
    
    public function getTime()
    {
        return $this->time;
    }
}

