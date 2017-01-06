<?php


namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class ConnectionLog extends Model
{
    protected $line;
    
    protected $IP;
    
    protected $NAME;
    
    protected $STATUS;
    
    protected $TIME;
    
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
        return $this->IP;
    }
    
    public function getName()
    {
        return $this->NAME;
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

