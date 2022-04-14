
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body id="body">
<form >
<input type="button" id="btn_sync" name="btn_sync" value="sync"/>
<div id="succ"  role="success" style="display:none">
</div>

</body>

</html>
<script>
$(document).ready(function(){
$('#btn_sync').click(function(){
    $.ajax({
        url: 'api/orders.php',
        type: "GET",
        async: false,
        dataType:"JSON",
        success: function (result) {
               console.log(result) 
                    if(result.length > 0)
                      {
                        for (var i = 0 in result) {
                            var saveDetails = new Object();
                                saveDetails.OrderNumber = result[i].OrderNumber;
                                saveDetails.CreationDate  = result[i].CreationDate;
                                saveDetails.ModificationDate  = result[i].ModificationDate ;
                                saveDetails.Quantity  = result[i].Quantity ;
                                saveDetails.productId  = result[i].productId ;
                                var Str = JSON.stringify(saveDetails);
                                $.ajax({
                                url: 'api/syncdata.php',
                                type: "post",
                                data: {orders:saveDetails},
                                success: function (res) {
                                    document.getElementById("succ").style.display= "initial";
                                    $('#succ').append('done');

                                },
                            });
                            }
                       
                      }     
                    },
                });
            

        })
});
   




</script>
