<!doctype html>
<html lang="en">
  <head>
      <style>
          .boxx{
              margin-top: 3%;
              margin-left: 0%;
              border: 1px solid blue;
              width: 100%;
              padding: 50px;
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
            color: black;
            font-weight: bolder;
            text-align: center;
            padding: 15px;
          }
          .boxx{
              background-color: #daa9fb;
          }
          body{
              background: linear-gradient(rgba(0,0,50, .4), rgba(0,50,0,.4)) no-repeat;
              height: 100vh;
          }
      </style>
    <title>Pendings</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
      
        <a href="frames.php"><button class="btn btn-danger">Back</button></a>
        <div class="hox">
        <div class="boxx">
            <span>Records</span><br>
            <table border="1">
                
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Email</th>
                    
                    <th>Gender</th>
                    <th>Order Date</th>
                    <th>Total</th>
                    <th>Catagory</th>
                    <th>Item</th>
                    <th>Pay</th>
                    <th>Bkash Number</th>
                    <th colspan="2">Action</th>
                </tr>

                <?php
                    include("connection.php");
                    error_reporting(0);
                    $query = "select * from pending order by catagory";
                    //$tbl1 = pending;
                    $data = mysqli_query($conn, $query);
                    $total = mysqli_num_rows($data);

                    if($total > 0){
                            while($res = mysqli_fetch_assoc($data)){
                                echo "
                                    <tr>
                                        <td>".$res['id']."</td>
                                        <td>".$res['fullname']."</td>
                                        <td>".$res['address']."</td>
                                        <td>".$res['email']."</td>
                                        
                                        <td>".$res['Gender']."</td>
                                        <td>".$res['orderDate']."</td>
                                        <td>".$res['total']."</td>
                                        <td>".$res['catagory']."</td>
                                        <td>".$res['items']."</td>
                                        <td>".$res['pay']."</td>
                                        <td>".$res['bkash_number']."</td>
                                        <td><a href='del-pending.php?rn=$res[id]' onclick='return checkdelete()'><button class='btn btn-danger'>Delete</button></a></td/>
                                        ";
                                        ?>
                                        <?php
                                        if($res['approved'] == 0){
                                            echo "<td><a href='add-pending.php?rn=$res[id]&fn=$res[fullname]&ln=$res[address]&em=$res[email]&dis=$res[catagory]&pla=$res[items]&gen=$res[Gender]&ar=$res[orderDate]&lv=$res[total]&py=$res[pay]&bkk=$res[bkash_number]'><input onclick='change()' type='button' class='btn btn-primary' value='Approve' id='myButton1'></a></td>";
                                        }
                                        else{
                                            echo "<td><input type='button' class='btn btn-success' value='Approved' id='myButton1'></a></td>";

                                        }
                                        echo"
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
        </div>

    <script>
        function checkdelete(){
            return confirm("Are u sure want to delete? ");
        }
        function change()
        {
            var elem = document.getElementById("myButton1");
            if (elem.value=="Approve") elem.value = "Approved";
            //else if(ele.value == "Approved") elem.value = "Approve";
            
        }
    </script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>