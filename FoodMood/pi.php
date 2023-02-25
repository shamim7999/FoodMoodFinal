<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "chart";

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if($conn){
        //echo "Connected to ".$dbname."";
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
          ['Student', 'Contribution'],
         <?php
         $sql = "SELECT * FROM contribution";
         $fire = mysqli_query($conn,$sql);
          while ($result = mysqli_fetch_assoc($fire)) {
            echo"['".$result['Student']."',".$result['Contribution']."],";
          }

         ?>
        ]);

        var options = {
          title: 'Students and their contribution'
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