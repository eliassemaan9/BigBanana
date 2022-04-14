<?php
  require_once("../function.php");

  $Orders = getItems("*","orders","statusId=1");

  
  $arr_Order = [];
  while ($row = mysqli_fetch_assoc($Orders)) {
    $object = (object)[];
    foreach ($row as $key => $value)
    {
        $object->$key = $value;
        
    }
    $arr_Order[count($arr_Order)] = $object;
    
  }
  updateData('orders','statusId=0',"statusId=1");
  echo json_encode($arr_Order);



?>