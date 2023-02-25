<?php
    include("connection.php");
    error_reporting(0);
    $id = $_GET['rn'];
    $query = " DELETE FROM gallery2 WHERE id = '$id' ";
    $data = mysqli_query($conn, $query);
    
    if($data){
        echo "<script>alert('Record Deleted!')</script>";
        ?>
        <META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost/foodmood/ad-gal2-handle.php">
        <?php

    }
    else{
        echo "<script>alert('Record could not be Deleted!')</script>";
    }
?>