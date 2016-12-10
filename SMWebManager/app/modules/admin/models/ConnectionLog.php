<?php


namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class ConnectionLog extends Model
{
    protected $line;
    
    protected $ip;
    
    protected $name;
    
    protected $status;
    
    protected $time;
    
    public function initialize()
    {
        $this->setSource("GUESTBOOK");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getIp()
    {
        return $this->ip;
    }
    
    public function getName()
    {
        return $this->name;
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

