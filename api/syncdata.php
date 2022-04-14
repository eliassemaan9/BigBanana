<?php
   require_once("../onlineFunction.php");
  
    $Orders = $_POST['orders'];
   

   // $json = json_encode($Orders);
    // for($i = 0 ; $i < count($Orders) ; $i++ )
    // {
       
        insertData("orders","OrderNumber,CreationDate,ModificationDate,Quantity,productId"
        ,"'$Orders[OrderNumber]','$Orders[CreationDate]','$Orders[ModificationDate]','$Orders[Quantity]','$Orders[productId]'");
      
      
        /**********send email function is commented because it's only work with online host *********/
        $email = "ceoOf@gmail.com";
        $subject = "All new data was synced";
        $message = "All new data was synced from local database";
        //sendMail($email,$subject,$message);
        
   
      
   
?>