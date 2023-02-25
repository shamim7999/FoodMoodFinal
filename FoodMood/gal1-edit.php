<?php
    include("connection.php");
    error_reporting(0);

    $rn = $_GET['rn']; // id
    $fn = $_GET['fn']; // source
    $ln = $_GET['ln']; // place
    
?>
<!doctype html>
<html lang="en">
  <head>
      <style>
          #button{
              background-color: green;
              color: white;
              height: 32px;
              width: 85px;
              border-radius: 25px;
          }
          body{
              background: linear-gradient(red, pink) no-repeat;
              height: 100vh;  
            }
          table td{
              color: white;
          }
          .box{
              margin-top: 10%;
          }
      </style>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
      <div class="box">
        <form action="" method="POST">
            <table border="0" align="center" bgcolor="black" cellspacing="20" cellpadding="10">
              
                <tr>
                    <td>Place: </td>
                    <td><input type="text" value="<?php echo "$ln" ?>" placeholder="Place" required name="place"/></td>
                </tr>

                

                <tr>
                    <td colspan="2" align="center"><a href="login.html"><input type="submit" value="update" id="button" name="submit"/></a></td>
                </tr>

                

            </table>
        </form>
      </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>

<?php

    if(isset($_POST['submit'])){
       // $rnn = $_POST['id'];
       $rnn = $rn;
       // $fnn = $_POST['firstname'];
        $lnn = $_POST['place'];
        //$emn = $_POST['email'];
        
        
        $query = " UPDATE gallery1 SET place='$lnn' WHERE id='$rnn' ";
        //$query = " UPDATE Jaflong SET firstname='$fnn' WHERE id='$rnn' ";
        $data = mysqli_query($conn, $query);

        //echo $rnn;

        if($data){
            echo "<script>alert('Record Updated!')</script>";
            ?>
            <META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost/travel3/ad-gal1-handle.php">
            <?php
    
        }
        else{
            echo "<script>alert('Record could not be Updated!')</script>";
        }
    }
?>