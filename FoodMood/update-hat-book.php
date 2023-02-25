<?php
include("connect.php");
error_reporting(0);

$id=$_GET['rn'];
$query = "DELETE FROM hatirjheel WHERE ID = '$id'";

$data=mysqli_query($conn, $query);

if($data){
    echo "<font color='green'>Record Deleted from Database.";
}
else{
    echo "<font color='red'>Record could not Deleted from Database.";    
}

?>