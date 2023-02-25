<?php
    include("connection.php");
    error_reporting(0);
    $query = "SELECT * FROM chatro";
    $data = mysqli_query($conn, $query);
    $total = mysqli_num_rows($data);
    $result = mysqli_fetch_assoc($data);

    echo $result['rollno'];
?>