<?php
    include("connection.php");
    error_reporting(0);

    $rnn = $_GET['rn'];
    $fnn = $_GET['fn'];
    $lnn = $_GET['ln'];
    $emn = $_GET['em'];
    $pyn = $_GET['py'];
    $genn = $_GET['gen'];
    $arn = $_GET['ar'];
    $lvn = $_GET['lv'];
    $disn = $_GET['dis'];
    $plan = $_GET['pla']; /// Items
    $bk = $_GET['bkk'];
    
    //$tt = $disn;

            $query = "INSERT INTO customers VALUES('$rnn', '$fnn', '$lnn', '$emn', '$genn', '$arn', '$lvn', '$disn', '$plan', '$pyn', '$bk')";
            
            $data = mysqli_query($conn, $query);
            
            if($data){
                
                
                echo "<script>alert('Record Approved!')</script>";
                ?>
                <?php
                    //$a1 = "mdshamimmansoori7999@gmail.com";
                   $to_email = $emn;
                   $subject = "Simple Email Test via PHP";
                   $body = "Congratulations, Your order ".$plan." will be provided in 35 minutes.. Thank You ".$fnn;
                   $headers = "From: 10shamimsarker01@gmail.com";

                   if (mail($to_email, $subject, $body, $headers)) {
                       echo "Email successfully sent to $to_email...";
                   } else {
                       echo "Email sending failed...";
                   }
                ?>
                <?php
                     $query = "UPDATE pending SET approved = 1 WHERE id = $rnn";
                     $data = mysqli_query($conn, $query);
                ?>

                <META HTTP-EQUIV="refresh" CONTENT="0; URL=http://localhost/foodmood/pending.php">
                <?php
        
            }
            else{
                echo "<script>alert('Record could not be Approved!')</script>";
                ?>
                <META HTTP-EQUIV="refresh" CONTENT="0; URL=http://localhost/foodmood/pending.php">
                <?php
            }
   
?>
