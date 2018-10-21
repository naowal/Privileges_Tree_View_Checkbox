<?php

class connectionClass extends mysqli{
    
    private $host= "localhost" ,$password="adminadmin",$username="id7540069_root",$dbName='id7540069_rolemanager';
    public $con;
    function __construct() {
        $this->con=  $this->connect($this->host, $this->username, $this->password, $this->dbName);
    }
}
