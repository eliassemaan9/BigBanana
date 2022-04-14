<?php
    require_once("onlineconnection.php");
    header('Content-Type: text/html; charset=utf-8');
    date_default_timezone_set("Asia/Beirut");
    $now = date("Y-m-d H:i:s");
 
    function sendMail($to,$subject,$msg)
    {
        $headers =  "Organization: 442FB\r\n";
        $headers .= "MIME-Version: 1.0\r\n";
        $headers .= "Content-type: text/plain; charset=utf-8\r\n";
        $headers .= "From: bigBanana@banana.com" . "\r\n";
        $headers .= "Reply-To: ".$to."\r\n";
        $headers .= "X-Priority: 3\r\n";
        $headers .= "X-Mailer: PHP". phpversion() ."\r\n";
        mail($to,$subject,$msg,$headers);
    }

  function insertData($table,$fields,$values)
  {
     
      global $cn;
      $query = "insert into ".$table."(".$fields.") values(".$values.")";
      mysqli_query($cn,$query);
  }


?>