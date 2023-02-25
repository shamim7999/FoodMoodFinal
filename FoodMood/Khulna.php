
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
                            <section class="features">
                            <h1>Different Places in Khulna</h1>
                            <div class="container">
                            <?php
                          error_reporting(0);
                          include("connection.php");
                      
                          $query = "SELECT * FROM  Khulna " ;
                          $data = mysqli_query($conn, $query);
                          $total = mysqli_num_rows($data);    
                          if($total>0){
                                  $num = 0;
                                  while(1){
                                        //$hh = "";     
                                        echo "<div class='row'>";
                                                while($result = mysqli_fetch_assoc($data)){
                                                  //$one = $result["places"];
                                                  //$two = $result["images"];
                                                  //$three = $result["price"];
                                                  //$four = $result["details"];
                                                  //$one = $result["myfile"];
                                                  //$one = $result["myfile"];
                                                  echo "
                                                        <div class='col-md-4'>
                      
                                                              <div class='feature-box'>
                                                                <div class='feature-img'>
                                                                  ";
                                                                  $hh = $result['myfile'];
                                                                  $hh.=".php";
                                                                  echo "
                                                                  <a href='$hh'><img src='".$result['images']."'></a>
                                                                  <div class='price'>
                                                                    <p> ".$result["price"]." </p>
                                                                  </div>
                                                                </div>
                                                                <div class='feature-details'>
                                                                <h4> ".$result["myfile"]." </h4>
                                                                  <p> ".$result["details"]."
                                                                  <div>
                                                                  <span><i class='fa fa-map-marker'></i> ".$result["place"]." </span>
                                                                  <span><i class='fa fa-sun-o'></i>3 days</span>
                                                                  <span><i class='fa fa-moon-o'></i>4 nights</span>
                                                                </div>
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
                            </body>
                            </html>
                
                
                
                
                
                
                