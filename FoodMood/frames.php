<?php
  session_start();
                    include("connection.php");
                    error_reporting(0);
                    $query = "select * from pending";
                    //$tbl1 = pending;
                    $data = mysqli_query($conn, $query);
                    $total = mysqli_num_rows($data);

  //$gh = $gh+1;
	if(!isset($_SESSION['luser'])){
		echo "<p align='center'>PLease Login Again</p>";
		echo "<a href='userlogin.php'>Click here to Login</a>";
	}
	else{
		$now = time();
		if($now > $_SESSION['expire']){
			session_destroy();
			echo "<p align='center'>Your Session Has Expired</p>";
			echo "<a href='userlogin.php'>Click here to Login</a>";
		}
	}
?>

<!doctype html>
<html lang="en">
  <head>
    <style>
      .choto{
        font-size: 10px;
      }
      .pen{
        border: 1px solid red;
        color: red;
        font-weight: bolder;
        border-radius: 60%;
        padding: 4px;
        background: aqua;
      }
    </style>
    <title>Admin Panel</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="frames.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
      <input type="checkbox" id="check">
      <label for="check">
         <i class="fa fa-bars" id="btn"></i>
         <i class="fa fa-times" id="cancel"></i>
      </label>
      <div class="sidebar">
         <header>Admin Panel</header>
         <ul>
            <li><a href="web1.php"><i class="fa fa-qrcode"></i>Home</a></li>
            <li><a href="ad-gal1-handle.php"><i class="fa fa-link"></i>Home Gallery</a></li>
            <li><a href="ad-gal2-handle.php"><i class="fas fa-stream"></i>Food Gallery</a></li>
            <li><a href="pending.php"><i class="fab fa-angellist"></i>
            
            <?php
              if($total > 0){
                 echo "<font style='color:red'>Pendings $total</font>";
              }
              else{
                echo "Pendings";
              }
            ?>
            
            </a></li>
			      <li><a href="handle-comments.php"><i class="fas fa-comments"></i>Comments</a></li>
			      <li><a href="tourists.php"><i class="fas fa-address-card"></i>Customers Record</a></li>
            
            <li><a href="pics2.php"><i class="fa fa-cloud"></i><span  class="choto">Add Photos to Home Gallery</span></a></li>
            <li><a href="pics.php"><i class="fa fa-cloud"></i><span  class="choto">Add Photos to Food Gallery</span></a></li>
            <li><a href="AddPlaces.php"><i class="fas fa-sign-out-alt"></i>Add Catagory</a></li>
            <li><a href="AddPlaces2.php"><i class="fas fa-sign-out-alt"></i>Add Items</a></li>
            <li><a href="AddDetails.php"><i class="fas fa-sign-out-alt"></i>Add Details</a></li>
		      	<li><a href="pii.php"><i class="fas fa-sign-out-alt"></i>Pi-Chart</a></li>
            <li><a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a></li>
         </ul>
      </div>

      <section></section>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>