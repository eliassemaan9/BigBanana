<?php
    require_once("oldconnection.php");
    header('Content-Type: text/html; charset=utf-8');
    date_default_timezone_set("Asia/Beirut");
    $now = date("Y-m-d H:i:s");
    
  
    function getItems($data,$table,$condition)
    {
      
        global $cn;
        $query = "select ".$data." from ".$table." where ".$condition;
        $res = mysqli_query($cn,$query);
        return $res;
    }

   
    function updateData($table,$values,$condition)
    {
        // Modify Data In Database
        global $cn;
        $query = "update ".$table." set ".$values." where ".$condition;
        mysqli_query($cn,$query);
    }
  

?>