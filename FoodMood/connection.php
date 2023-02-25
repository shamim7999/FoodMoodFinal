<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "admin2";

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if($conn){
        //echo "Connected to ".$dbname."";
    }
    else{
        echo "Not Connected".mysqli_connect_error();
    }
    
?>