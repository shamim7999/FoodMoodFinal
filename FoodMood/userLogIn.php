<?php
  include("connection.php");
  error_reporting(0);
?>

<!doctype html>
<html lang="en">
  <head>

    <style>
      font{
        font-weight: bolder;
      }
    </style>

    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="userLogin.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
    <form action="" method="POST"  autocomplete="new-password">
    <div class="login-box">
        <h1>Login</h1>
        <div class="textbox">
          <i class="fas fa-user"></i>
          <input type="text" placeholder="username" name="username">
        </div>
      
        <div class="textbox">
          <i class="fas fa-lock"></i>
          <input type="password"  autocomplete="new-password" placeholder="Password" name="password">
        </div>
      
         <div class="hu"><input type="submit" class="btn" value="submit" name="submit"></div>
  </div>  
  
    </form>  
  
  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>

<?php
  session_start();
  if(@$_POST['submit']){
    $user = $_POST['username'];
    $pass = $_POST['password'];
   // $query = "SELECT * FROM admin WHERE username='$user' && password='$pass'";

   

    //$data = mysqli_query($conn, $query);
    //$total = mysqli_num_rows($data);
    //echo $total;
    
    if($user == "admin" && $pass == "2222"){
      //echo "<font style='color:green'>Logged In.</font>";
      //session_start();
      $_SESSION['luser'] = $user;
      $_SESSION['start'] = time();
      $_SESSION['expire'] = $_SESSION['start']  + (1000*60);
      header("location:frames.php");
    }
    else{
      echo "<font style='color:red'>Login Failed.</font>";
    }
  }
?>