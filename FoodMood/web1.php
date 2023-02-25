<!doctype html>
<html lang="en">
  <head>
    <style>
      .header p{
        font-size: 30px;
        color: blue;
      }
      .galleruu img{
         height: 150px;
         width: 50%;
      }
      .feedback{
        padding: 100px 0;
        background: #efefef;
      }
      .comms{
        margin-left: 200px;
      }

      .comms .btn{
        margin-left: 130px;
      }
      .comms input{
          padding: 5px;
          width: 30%;
      }
      .comms textarea{
          padding: 10px;
          width: 70%;
          
      }
         
    </style>
    <title>Home</title>
    <!-- Required meta tags -->
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="Web1.css">
    <link rel="stylesheet" href="web11.css">
     
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
  
    <section class="header">
        <div class="topnav">
          <a class="active" href="#home">Home</a>
          <a href="index.php">Login</a>
          <a href="aboutus.php">About Us</a>
         
          
        </div>
     
        <h1>Good Food,Good Mood</h1>
        <p>Where there is good food, there is happiness.</p>
       
     

    </section>
    
    <!--Feautured Destination-->

    <section class="features">
      <h1>Feautured Food Items</h1>
      <div class="container">
      <?php
    error_reporting(0);
    include("connection.php");

    $query = "SELECT * FROM places";
    $data = mysqli_query($conn, $query);
    $total = mysqli_num_rows($data);    
    if($total>0){
            $num = 0;
            while(1){
                  //$hh = "";     
                  echo "<div class='row'>";
                          while($result = mysqli_fetch_assoc($data)){
                              echo "
                                  <div class='col-md-4'>

                                        <div class='feature-box'>
                                          <div class='feature-img'>
                                            ";
                                            $hh = $result['place'];
                                            $hh.=".php";
                                            //$hh = "https://www.facebook.com";
                                            echo "
                                            <a href='$hh'><img src=' ".$result['images']." '></a>
                                            <div class='price'>
                                              <p> ".$result['price']." </p>
                                            </div>
                                          </div>
                                          <div class='feature-details'>
                                          <h4> ".$result['place']." </h4>
                                            <p> ".$result['details']."
                                            
                                            </p>
                                          </div>

                                        </div>


                                      </div>
                        
                          ";	
                          $num++;
                          if($num%3 == 0 || ($num == $total)){
                                        break;
                          }
                        }
                        

                  echo "</div>";
                  if($num == $total)
                      break;
              }
          }
          else{
             echo "No images.";
          }
       ?>

        
        

      </div>

    </section>

    <!--Feautured Destination-->

    <section class="gallery">
      <h1>Foods Gallery</h1>
      <div class="container">
      <?php
          error_reporting(0);
          include('connection.php');

          $query = "SELECT * FROM gallery1";
          $data = mysqli_query($conn, $query);
          $total = mysqli_num_rows($data);    
          if($total>0){
          $num = 0;
					while(1){
							
					echo "<div class='row'>";
					while($result = mysqli_fetch_assoc($data)){
							echo "
								<div class='col-md-3'>
								<div class='gallery-box'>
								<img src=' ".$result["source"]." '>
								<h4>".$result['place']."</h4>
								</div>
								</div>
								";
								$num++;
								if($num%4 == 0 || ($num == $total)){
                    break;
								}
					}
							echo "</div>";
								
								if($num == $total)
									break;
					}
          }
          else{
             echo "No images.";
          }
       ?>
          

      </div>

    </section>

    <!--Banner-->
    <section class="banner">
      <div class="banner-highlights text-center">
        <div class="container">
          <div class="row">
            <div class="col-md-8">
              
            </div>
            <div class="col-md-4">
              
            </div>
          </div>

        </div>

      </div>
    </section>

    <!--User Preview-->

    <section class="users-feedback">
      <h1>Users Review</h1>
      <div class="container">
      <?php
                        error_reporting(0);
                        include('connection.php');

                        $query = "SELECT * FROM comments order by place";
                        $data = mysqli_query($conn, $query);
                        $total = mysqli_num_rows($data);    
                        if($total>0){
                            $num = 0;
							while(1){
							
								echo "<div class='row'>";
									while($result = mysqli_fetch_assoc($data)){
										echo "
											<div class='col-md-4'>
												<div class='user-review'>
													<p>".$result['comment']."</p>
													<h5>".$result['name']."</h5>
													<small>".$result['place']."</small>
													
												</div>
												<img src=' ".$result['source']." '>
											</div>
										";
										$num++;
										if($num%3 == 0 || ($num == $total)){
											break;
										}
									}
								echo "</div>";
								
								if($num == $total)
									break;
							}
                        }
                        else{
                            echo "No comments.";
                        }
                    ?>

      </div>
    </section>

    <section class="feedback">
          <div class="container">
              <h1>Add a Feedback</h1>
              <?php
    error_reporting(0);
    include('connection.php');
    ?>

       <div class="container"> 
            <div class="comms">
                <form action="" method="POST" enctype="multipart/form-data">
                Enter a Comment:
                <textarea type="text" rows="5" name="comment" value="" id="comment" placeholder="Say Something...">

                </textarea><br><br>
                Enter Your Name: <input type="text" name="name" value="" id="name" placeholder="Your Name" required><br><br>
                Enter Food Item: <input type="text" name="place" value="" id="place" placeholder="Item Name" required><br><br>
                Enter an Image: <input type="file" name="uploadfile" required> <br><br>
                <input class="btn btn-primary" type="submit" value="upload" name="submit">
                </form>
            </div>
       </div>

       <?php
    if($_POST['submit']){
        $filename = $_FILES["uploadfile"]["name"];
        $tempname = $_FILES["uploadfile"]["tmp_name"];
        
        $aa = $_POST["comment"];
        $bb = $_POST["name"];
        $cc = $_POST["place"];
        
        $folder = "std/".$filename;
        
        move_uploaded_file($tempname, $folder);
        //echo $folder;
        $in++;

        if($folder!=""){
            $query = "INSERT INTO comments(comment, name, place, source) VALUES('$aa','$bb','$cc','$folder')";
            $data = mysqli_query($conn, $query);
            
            if($data){
              echo "<script>alert('Comment Added!')</script>";
              ?>
              <META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost/travel3/web1.php">
              <?php
      
          }
          else{
              echo "<script>alert('Comment could not Added!')</script>";
          }
        } 
    }
?>
          </div>
    </section>

    <!--Footer-->
    <section class="footer">
      <div class="container">  
        <p class="text-center foot">Copyright &copy All right reserved</p>
        <p class="text-center foot">Created and Maintained by Shamim Sarker, Mahinur Afroza, Sadia Jannat, Abida Sultana, Taznova Akter</p>
        
      </div>

    </section>

    
  
    <!--Start of Javascript-->
    <!--script src="Website1.js"></script-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script type="text/javascript" src="../js/popper.min.js"></script>
  </body>
</html>


