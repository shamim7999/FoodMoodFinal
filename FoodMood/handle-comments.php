<!doctype html>
<html lang="en">
  <head>
      <style>
          .boxx{
              margin-top: 3%;
              margin-left: 2%;
              border: 1px solid blue;
              width: 95%;
              
              padding: 50px;
          }
          .boxx span{
              margin-left: 44%;
              color: Green;
              font-weight: bolder;
              font-size: 25px;
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
          table{
              margin-left: 40px;
          }
         
          img{
            height: 150px;
            width: 150px;
            border-radius: 4%;
            margin-left: 10px;
            margin-top: 5px;
        }
      </style>
    <title>Comments</title>
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
            <span>Comments</span><br>
            <table border="1">
                
                <tr>
                    <th>ID</th>
                    <th>Image</th>         
                    <th>Name</th>
                    <th>Place</th>
                    <th>Comment</th>
                    <th>Action</th>
                </tr>

                <?php
                    include("connection.php");
                    error_reporting(0);
                    $query = "select * from comments order by id";
                    $data = mysqli_query($conn, $query);
                    $total = mysqli_num_rows($data);

                    if($total > 0){
                            while($res = mysqli_fetch_assoc($data)){
                                echo "
                                    <tr>
                                        <td>".$res['id']."</td>
                                        <td><img src=' ".$res['source']." '></td>
                                        <td>".$res['name']."</td>
                                        <td>".$res['place']."</td>
                                        <td>".$res['comment']."</td>
                                        <td><a href='del-comments.php?rn=$res[id]' onclick='return checkdelete()'><button class='btn btn-danger'>Delete</button></a></td/>
                                        
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
    </script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>