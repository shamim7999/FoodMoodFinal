<?php
    $username = $_POST['username'];
    $password = $_POST['password'];
    $email = $_POST['email'];
    $phoneCode = $_POST['phoneCode'];
    $phone = $_POST['phone'];

    if(!empty($username) || !empty($password) || !empty($email) || !empty($phoneCode) || !empty($phone)){
        $host = "localhost";
        $dbUsername = "root";
        $dbPassword = "";
        $dbname = "Info";

        $conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);

        if(mysqli_connect_error()){
            die('Connect Error('.mysqli_connect_errno().')'.mysqli_connect_error());
        }
        else{
            $SELECT = "SELECT email from register where email = ? limit 1";
            $INSERT = "INSERT into register(username, password, email, phoneCode, phone) values(?, ?, ?, ?, ?)";
            
            $stmt = $conn->prepare($SELECT);
            $stmt->bind_param("s", $email);
            $stmt->execute();
            $stmt->bind_result($email);
            $stmt->store_result();
            $rnum = $stmt->num_rows;

            if($rnum == 0){
                $stmt->close();
                $stmt = $conn->prepare($INSERT);
                $stmt->bind_param("sssii", $username, $password, $email, $phoneCode, $phone);
                $stmt->execute();
                echo "New record inserted successfully.";
            }
            else{
                echo "Somebody already used this Email.";
            }

            $stmt->close();
            $conn->close();
        }
    }
    else{
        echo "All fields lagbo";
        die();
    }

?>