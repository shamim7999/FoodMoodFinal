<?php
    include("connection.php");
    error_reporting(0);
    $rollno = $_GET['rn'];
    $query = " DELETE FROM chatro WHERE rollno = '$rollno' ";
    $data = mysqli_query($conn, $query);
    
    if($data){
        echo "<font color='green'>Record Deleted.</font>";
    }
    else{
        echo "<font color='red'>Record could not Deleted.</font>";
    }
?>