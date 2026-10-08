<?php
   						
    define ('hostnameorservername',"localhost");	 // Server Name or host Name 
    define ('serverusername','root'); // database Username 
    define ('serverpassword',''); // database Password 
    define ('databasename','ration_card'); // database Name 
    
    $project = "E-Ration Card";
    $smallproject = "E-Ration";
    $slogan = "Smart-Versatile-Limitless";
    $officename = "Kolhapur";
    $officename1 = "SIT";
    global $connection;
    $connection = @mysqli_connect(hostnameorservername,serverusername,serverpassword,databasename) or die('Connection could not be made to the SQL Server. Please contact report this system error at <font color="blue">88 8888 8888</font>');
   

?>
