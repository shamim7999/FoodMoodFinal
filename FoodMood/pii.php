<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "admin2";

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if($conn){
        //echo "Connected to ".$dbname."<br>";

        //$sql = "SELECT COUNT(place) as `num`
        //FROM tourists
        //where place='ratargul'";
         //$fire = mysqli_query($conn,$sql);
         //$result = mysqli_fetch_array($fire);
         //echo $result['num'];

    }
    else{
        echo "Not Connected".mysqli_connect_error();
    }
    
?>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Items', 'Contribution'],
          <?php
         $sql = "SELECT DISTINCT catagory FROM customers";
         $fire = mysqli_query($conn,$sql);
          while ($result = mysqli_fetch_assoc($fire)) {
            //$cc='';
            //$cc .= $result['place'];
            $sql2 = "SELECT COUNT(catagory) as `num`
            FROM customers WHERE catagory='".$result['catagory']."'";
            //echo $cc;
            //echo "<br>";
            $fire2 = mysqli_query($conn,$sql2);
            $result2 = mysqli_fetch_array($fire2);
            //echo $result2['num'];

            //echo "dshdjs";
            echo"['".$result['catagory']."',".$result2['num']."],";
          }

         ?> 
        ]);

        var options = {
          title: 'Items and their contribution'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="piechart" style="width: 1900px; height: 700px;"></div>
  </body>
</html>