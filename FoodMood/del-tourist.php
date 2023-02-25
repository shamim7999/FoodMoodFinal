<?php
    include("connection.php");
    error_reporting(0);
    $id = $_GET['rn'];
    $query = " DELETE FROM tourists WHERE id = '$id' ";
    $data = mysqli_query($conn, $query);
    
    if($data){
        echo "<script>alert('Record Deleted!')</script>";
        ?>
        <META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost/travel3/tourists.php">
        <?php

    }
    else{
        echo "<script>alert('Record could not be Deleted!')</script>";
    }
?>