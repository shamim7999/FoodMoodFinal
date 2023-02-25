<!doctype html>
<html lang="en">
  <head>
      <style>
          .boxx{
              margin-top: 3%;
              margin-left: 15%;
              border: 1px solid blue;
              width: 76%;
          }
          .boxx span{
              margin-left: 44%;
              color: Green;
              font-weight: bolder;
              font-size: 25px;
          }
          .boxx .hu button{
              margin-left: 44%;
              margin-bottom: 4px;
        
          }
          .boxx th{
            color: blue;
            font-weight: bolder;
            text-align: center;
            padding: 12px;
          }
          .boxx td{
            color: white;
            font-weight: bolder;
            text-align: center;
            padding: 15px;
          }
          .boxx{
              background-color: lightskyblue;
          }
          body{
              background: linear-gradient(rgba(0,0,50, .4), rgba(0,50,0,.4)) no-repeat;
              height: 100vh;
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
      
       
        <div class="boxx">
            <span>Records</span><br>
            <table border="1">
                
                <tr>
                    <th>Roll No.</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Gender</th>
                    <th>Arrival Date</th>
                    <th>Leaving Date</th>
                    <th>District</th>
                    <th>PLace</th>
                    <th colspan="2">Action</th>
                </tr>

                <?php
                    include("connection.php");
                    error_reporting(0);
                    $query = "select * from chatro";
                    $data = mysqli_query($conn, $query);
                    $total = mysqli_num_rows($data);

                    if($total > 0){
                            while($res = mysqli_fetch_assoc($data)){
                                echo "
                                    <tr>
                                        <td>".$res['rollno']."</td>
                                        <td>".$res['firstname']."</td>
                                        <td>".$res['lastname']."</td>
                                        <td>".$res['email']."</td>
                                        <td>".$res['password']."</td>
                                        <td>".$res['Gender']."</td>
                                        <td>".$res['ArrivingDate']."</td>
                                        <td>".$res['LeavingDate']."</td>
                                        <td>".$res['district']."</td>
                                        <td>".$res['place']."</td>
                                        <td><a href='del.php?rn=$res[rollno]'><button class='btn btn-danger'>Delete</button></a></td/>
                                        <td><a href='edit.php?rn=$res[rollno]&fn=$res[firstname]&ln=$res[lastname]&em=$res[email]&dis=$res[district]&pla=$res[place]'><button class='btn btn-success'>Edit</button></a></td>
                                    </tr>
                                ";
                            }
                    }
                    else{
                        echo "
                            <div class='hu'>
                                <button class='btn btn-info'>No Records</button>
                            </div>
                        ";
                    }
                ?>

            </table>
        
      </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>