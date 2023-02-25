
            <!doctype html>
            <html lang="en">
              <head>
                <title>KaptaiLake</title>
                <!-- Required meta tags -->
                
                <style>
                    img{
                        height: 250px;
                        width: 250px;
                        border-radius: 4%;
                        margin-left: 10px;
                        margin-top: 5px;
                    }
                    .gal{
                        margin-left: 50px;
                    }
                </style>
                <!-- Required meta tags -->
                
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            
                <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="web1.css">
                <link rel="stylesheet" href="styleSadia.css">
                
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
              </head>
            <body>
            
            <section class="gallery dis">
                        <h1>Travelling Gallery</h1>
                        <div class="container">
                            <div class="gal">
                              <?php
                              error_reporting(0);
                              include("connection.php");
            
                              $query = "SELECT * FROM gallery2  WHERE place='KaptaiLake'";
                              $data = mysqli_query($conn, $query);
                              $total = mysqli_num_rows($data);    
                              if($total>0){
                                  while($result = mysqli_fetch_assoc($data)){
                                      echo "
                                              <span>
                                                  <img src=' ".$result['source']." '>
                                              </span>
                                      ";
                                  }
                              }
                              else{
                                  echo "No images.";
                              }
                          ?>
                            </div>
                        </div>
                    </section>
                    <section class="jaf-details">
                    <?php
                    error_reporting(0);
                    include("connection.php");
                    $query = "SELECT details FROM det WHERE place='KaptaiLake'";
                    $data = mysqli_query($conn, $query);
                    $total = mysqli_num_rows($data);    
                    
                    if($total>0){
                        while($result = mysqli_fetch_assoc($data)){
                            echo "
                                <div class='container'>
                                    <p>
                                        ".$result['details']."
                                    </p>  
                                </div>
                            ";
                        }
                    }
                ?>
                      
                      
                        
                    
                  </section>
                  <section class="city-footer">
                      <div class="container">
                        
                        <div class="book-now">
                          <a href="Rangamati-book.php"><button type="submit" class="btn btn-outline-danger">Book Now!</button></a>
                        </div>
            
                        
            
                      </div>
            
                  </section>
                
                <!--JavaScript-->
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
            </body>
            </html>
            