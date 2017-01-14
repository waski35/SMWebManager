<?php

namespace SMWebManager\Modules\Admin\Models;

use Phalcon\Mvc\Model;

class ChatLog extends Model
{
    protected $line;
    
    protected $CHATSTRING;
    
    protected $LOGDATE;
        
    protected $RECIEVER;
    
    protected $SENDER;
    
    public function initialize()
    {
        $this->setSource("CHATLOG");
    }
    
    public function getLine()
    {
        return $this->line;
    }
    
    public function getChatString()
    {
        return $this->CHATSTRING;
    }
    
    public function getLogDate()
    {
        return $this->LOGDATE;
    }
    
       
    public function getReciever()
    {
        return $this->RECIEVER;

    }
    
    public function getSender()
    {
        return $this->SENDER;

    }
    
}

