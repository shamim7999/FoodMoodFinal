<?php
    error_reporting(0);
    include('connection.php');
?>

<html>
    <body>
        <form action="" method="POST" enctype="multipart/form-data">
            
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
        
        $aa = $_POST["comment"];
        
        $cc = $_POST["place"];

        $in++;

        
            $query = "INSERT INTO det(place, details) VALUES('$cc', '$aa')";
            $data = mysqli_query($conn, $query);
            
            if($data){
                echo "INSERTED";
                ?>
                <META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost/foodmood/frames.php">
                <?php
            }
            else{
                echo "NOT INSERTED";
            }
        
    }
?>