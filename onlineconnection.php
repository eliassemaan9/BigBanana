<?php
    $cn=mysqli_connect('localhost','root','')or die("server connecting err");
    mysqli_select_db($cn,'online-db')or die ("wrong selecting db");
    $cn->set_charset("utf8");
?>