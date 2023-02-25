<?php
$db_host="localhost";
$db_user="root";
$db_password="";
$db_name="travel";


// Create Connection
$conn =new mysqli($db_host,$db_user,$db_password,$db_name);

//check Connection
if($conn->connect_error){
	die("connection faild");

}

// else{
// echo connection
// }
?>

