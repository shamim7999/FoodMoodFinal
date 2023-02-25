<?php
    error_reporting(0);
    include('connection.php');
?>

<html>
    <body>
        <form action="" method="POST" enctype="multipart/form-data">
            Enter an Image: <input type="file" name="uploadfile"> <br><br>

            Enter Price: <input type="text" name="price" value="" id="price" placeholder="Price " required><br><br>
            
            Enter a Food Name: <input type="text" name="place" value="" id="place" placeholder="Food Name" required><br><br>
            
            Enter a Some details:
            
            <textarea type="text" name="comment" value="" id="comment" placeholder="Describe yourself here...">

            </textarea><br><br>
            
            <input type="submit" value="upload" name="submit">

        </form>
    </body>
</html>

<?php
    if($_POST['submit']){
        $filename = $_FILES["uploadfile"]["name"];
        $tempname = $_FILES["uploadfile"]["tmp_name"];
        
        $aa = $_POST["comment"];
        
        $cc = $_POST["place"];
        $dd = $_POST["price"];

        $folder = "std/".$filename;
        
        move_uploaded_file($tempname, $folder);
        //echo $folder;
        $in++;

        if($folder!=""){
            $query = "INSERT INTO places(images, price, place, details) VALUES('$folder','$dd','$cc','$aa')";
            $data = mysqli_query($conn, $query);
            
            if($data){
                echo "INSERTED";

                $query = "
                    create table if not exists $cc
                    (
                        id int not null auto_increment,
                        images varchar(100),
                        price int(20),
                        place varchar(30),
                        details varchar(1000),
                        myfile varchar(30),
                        primary key(id)
                    )
                
                ";

                $data = mysqli_query($conn, $query);
                $ff = $cc;
                $type=".php";
                $ff.=$type;
                $ff_book = $cc;
                $ff_book.="-book.php"; 
                $createFile = fopen($ff, "w") or die("There is a Problem");
                $createFile2 = fopen($ff_book, "w") or die("There is a Problem");
                
                $row = "'row'";
                $col_md_4 = "'col-md-4'";
                $price = "'price'";
                $featureDetails = "'feature-details'";
                $fa_fa_map_marker = "'fa fa-map-marker'";
                $fa_fa_sun_o = "'fa fa-sun-o'";
                $fa_fa_moon_o = "'fa fa-moon-o'";
                $feature_img = "'feature-img'";
                $feature_box = "'feature-box'";

                
                $one = '\'$result["places"].php\'';
                $two = '\'$result["images"]\'';
                $three = '\'$result["price"]\'';
                $four = '\'$result["details"]\'';


                $text = '
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
                            <h1>Different Items in '.$cc.'</h1>
                            <div class="container">
                            <?php
                          error_reporting(0);
                          include("connection.php");
                      
                          $query = "SELECT * FROM  '.$cc.' " ;
                          $data = mysqli_query($conn, $query);
                          $total = mysqli_num_rows($data);    
                          if($total>0){
                                  $num = 0;
                                  while(1){
                                        //$hh = "";     
                                        echo "<div class='.$row.'>";
                                                while($result = mysqli_fetch_assoc($data)){
                                                  //$one = $result["places"];
                                                  //$two = $result["images"];
                                                  //$three = $result["price"];
                                                  //$four = $result["details"];
                                                  //$one = $result["myfile"];
                                                  //$one = $result["myfile"];
                                                  echo "
                                                        <div class='.$col_md_4.'>
                      
                                                              <div class='.$feature_box.'>
                                                                <div class='.$feature_img.'>
                                                                  ";
                                                                  $hh = $result[\'myfile\'];
                                                                  $hh.=".php";
                                                                  echo "
                                                                  <a href=\'$hh\'><img src=\'".$result[\'images\']."\'></a>
                                                                  <div class='.$price.'>
                                                                    <p> ".$result["price"]." </p>
                                                                  </div>
                                                                </div>
                                                                <div class='.$featureDetails.'>
                                                                <h4> ".$result["myfile"]." </h4>
                                                                  <p> ".$result["details"]."
                                                                  
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
                
                
                
                
                
                
                ';

                fwrite($createFile, $text);
                fclose($createFile);
                
                $text2 = '
                <?php
                include("connection.php");
                error_reporting(0);
                $days=0;
                $d1=0; 
                $d2=0;
                static $money=0;
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
                          background: url(formform.jpg) no-repeat;
                          background-position: center;
                          background-size: cover;
                          height: 100vh;  
                        }
                      table td{
                          color: white;
                      }
                      .box{
                          margin-top: 10%;
                          opacity: 0.8;
                      }
                     
                  </style>
                <title>Booking for Foods</title>
                <!-- Required meta tags -->
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            
                <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
              </head>
              <body>
              
                  <div class="box">
                    <form action="bkash_payment.php" method="GET">
                        <table border="0" align="center" bgcolor="black" cellspacing="20" cellpadding="10">
                            <tr>
                              <td colspan="2" align="center" style="color:red">
                                <h3>Order Form!</h3>
                              </td>
                            </tr>
                           <!-- <tr>
                                <td>ID: </td>
                                <td><input type="text" placeholder="ID" required  name="id"/></td>
                            </tr>
                    -->
                            <tr>
                                <td>Name: </td>
                                <td><input type="text" placeholder="firstname" required name="firstname"></td>
                            </tr>
                           <!-- 
                            <tr>
                                <td>Last Name: </td>
                                <td><input type="text" placeholder="lastname" required name="lastname"/></td>
                            </tr>

                            -->
                            <td>Address: </td>
                            <td>
                                <textarea type="text" name="lastname" value="" id="lastname" placeholder="Describe yourself here...">

                                </textarea><br><br>
                            </td>
                            <tr>
                                <td>Email: </td>
                                <td><input type="email" placeholder="Email" required name="email"/></td>
                            </tr>
            
                           <!--
                                <tr>
                                <td>Password: </td>
                                <td><input type="password" placeholder="Password" required name="password"/></td>
                            </tr>
                           -->
            
                            <tr>
                                <td>Order Date: </td>
                                <td><input type="date" id="arrive" placeholder="Arrival Date" required name="arrive"/></td>
                            </tr>
                            <!--
                                <tr>
                                    <td>Leaving Date: </td>
                                    <td><input type="date" id="leave" placeholder="Leaving Date" required name="leave"/></td>
                                </tr>
                            -->
                            
                            <tr>
                                    <td>Total: </td>
                                    <td><input type="number" min="1" max="50" id="leave" placeholder="Total....." required name="leave"/></td>
                            </tr>

                            <tr>
                                <td>Gender: </td>
                                <td>Male &nbsp;<input type="radio" required name="r1" value="Male"/> &nbsp;
                                Female &nbsp;<input type="radio" required name="r1" value="Female"/></td>
                            </tr>
            
                            <tr>
                                <td>Catagory</td>
                                <td>
                                    <select name="district">
                                        <option selected>'.$cc.'</option>
                                    </select>
                                </td>
                            </tr>
            
                            <tr>
                                <td>Items</td>
                                <td>
                                    <select name="place" id="place" method="POST">
                                        

                                    <?php
                                    error_reporting(0);
                                    include("connection.php");
                                    $query = "SELECT * FROM '.$cc.'";
                                    $data = mysqli_query($conn, $query);
                                    $total = mysqli_num_rows($data);    
                                    
                                    if($total>0){
                                            while($result = mysqli_fetch_assoc($data)){
                                                echo "
                                                    <option>
                                                      
                                                            ".$result[\'myfile\']."
                                                         
                                                    </option>
                                                ";
                                            }
                                        }
                                    ?>



                                    </select>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Pay: </td>
                                <td><input readonly id="pay" placeholder="" required name="pay"/>$</td>
                            </tr>
                            <tr>
                                <td>
                                <button class="btn btn-danger" onclick="func()">
                                     Get total
                                </button>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><a href="login.html"><input type="submit" value="Submit" id="button" name="submit"/></a></td>
                            </tr>
            
                            
            
                        </table>
                    </form>
                  </div>
                <!-- Optional JavaScript -->
                <!-- jQuery first, then Popper.js, then Bootstrap JS -->
               
                <script>
                        func2 = function(){
                           
                            func();
                            //document.write(pla);
                        }
                </script>
                
                

                        

                <script type="text/javascript">
                    func = function(){
                        
                        
                            var str1 = document.getElementById("arrive").value;
                            var abc = document.getElementById("place").value; ///Abc
                            var str2 = document.getElementById("leave").value;
                            //var diff =  Math.floor(( Date.parse(str2) - Date.parse(str1) ) / 86400000)+1;
                            var diff = str2;
                            
                            document.cookie="cname="+abc;

                        <?php
                            $cookie=$_COOKIE[\'cname\'];
                           //$jayga = "Abc";
                            //echo $jayga;
                            //$jayga = $_POST[\'place\'];
                            //$jayga="<script>document.write(pla);</script>";
                            $query = "SELECT * FROM '.$cc.' WHERE myfile=\'$cookie\'";
                            $data = mysqli_query($conn, $query);
                            $tem="";
                            while($result = mysqli_fetch_assoc($data)){
                                $tem = $result[\'price\'];
                                break;
                            }
                            $tak="";
                            for($i=0; $i<strlen($tem); $i++){
                                if($tem[$i] == \'$\')
                                    break;
                                $tak.=$tem[$i];
                            }
                            //$tak="10";
                        ?>

                        
                        var ini = "<?php echo"$tak"?>";
                        //ini = "10";
                        //ini=100;
                        ini = parseInt(ini);
                        var taka = (ini*diff);
                        document.getElementById("pay").value = taka.toFixed(2);
                    }
                </script>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
              </body>
            </html>
            
            
                ';
                fwrite($createFile2, $text2);
                fclose($createFile2);
                
                ?>
                <META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost/foodmood/frames.php">
                <?php
            }
            else{
                echo "NOT INSERTED";
            }
        } 
    }
?>