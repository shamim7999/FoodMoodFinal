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
              background: url(bb5.jpg) no-repeat;
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
    <title>Booking for Sylhet</title>
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
                  <td colspan="2" align="center" style="color:red">
                    <h3>Booking Form!</h3>
                  </td>
                </tr>
               <!-- <tr>
                    <td>ID: </td>
                    <td><input type="text" placeholder="ID" required  name="id"/></td>
                </tr>
        -->
                <tr>
                    <td>First Name: </td>
                    <td><input type="text" placeholder="firstname" required name="firstname"></td>
                </tr>

                <tr>
                    <td>Last Name: </td>
                    <td><input type="text" placeholder="lastname" required name="lastname"/></td>
                </tr>

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
                    <td>Arrival Date: </td>
                    <td><input type="date" id="arrive" placeholder="Arrival Date" required name="arrive"/></td>
                </tr>

                <tr>
                    <td>Leaving Date: </td>
                    <td><input type="date" id="leave" placeholder="Leaving Date" required name="leave"/></td>
                </tr>

                <tr>
                    <td>Gender: </td>
                    <td>Male &nbsp;<input type="radio" required name="r1" value="Male"/> &nbsp;
                    Female &nbsp;<input type="radio" required name="r1" value="Female"/></td>
                </tr>

                <?php
                         error_reporting(0);
                         include("connection.php");
                        echo "<tr>
                        <td>District</td>
                        <td>
                            <select name='district'>";
                                
                                $data = mysqli_query($conn, $query);
                                $total = mysqli_num_rows($data);     
                                while($result = mysqli_fetch_assoc($data)){

                                        echo "<option>".$result['tableName']."</option>";
                                }

                            echo "
                            </select>
                        </td>
                        </tr>

                        <tr>
                        <td>Place</td>
                        <td>
                            <select name='place' id='place'>";
                                <option>Jaflong</option>
                                <option>Bichnakandi</option>
                                <option>Sree Mongol</option>
                            </select>
                        </td>
                        </tr>

                ?>
                
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
        func = function(){
            var str1 = document.getElementById("arrive").value;
            var pla = document.getElementById("place").value;
            var str2 = document.getElementById("leave").value;
            var diff =  Math.floor(( Date.parse(str2) - Date.parse(str1) ) / 86400000)+1;
            var ini=0;
            if(pla == "Jaflong")
                ini = 50;
            else if(pla == "Bichnakandi")
                ini = 40;
            else
                ini = 67;

            var taka = (ini*diff)/3;
            document.getElementById("pay").value = taka.toFixed(2);
        }
    </script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>

<?php
    if(isset($_POST['submit'])){
     //   $rn = $_POST['id'];
        $fn = $_POST['firstname'];
        $ln = $_POST['lastname'];
        $em = $_POST['email'];
        $py = $_POST['pay'];
        $gender = $_POST['r1'];
        $arrive = $_POST['arrive'];
        $leave = $_POST['leave'];
        $district = $_POST['district'];
        $place = $_POST['place'];
        $py.=' Dollars';
        if($fn!="" && $ln!="" && $em!="" && $gender!="" && $arrive!="" && $leave!=""){
            $query = "INSERT INTO pending(firstname, lastname, email, Gender, ArrivingDate, LeavingDate, district, place, pay) VALUES('$fn', '$ln', '$em', '$gender', '$arrive', '$leave', '$district', '$place', '$py')";
            $data = mysqli_query($conn, $query);
            if($data){
                echo "<script>alert('Record Inserted!')</script>";
                ?>
                <META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost/travel3/hatirjheel.php">
                <?php
        
            }
            else{
                echo "<script>alert('Record could not be Inserted!')</script>";
            }
        }
        else{
            echo "<script>alert('Fill all the box')</script>";
        }
    }
?>