<?php
    error_reporting(0);
    include('connection.php');
?>

<html>
    <body>
        <form action="" method="POST" enctype="multipart/form-data">
            Enter a Comment:
            <textarea type="text" name="comment" value="" id="comment" placeholder="Describe yourself here...">

            </textarea><br><br>
            Enter Your Name: <input type="text" name="name" value="" id="name" placeholder="Your Name" required><br><br>
            Enter a Item Name: <input type="text" name="place" value="" id="place" placeholder="Place Name" required><br><br>
            <input type="file" name="uploadfile"> <br><br>
            <input type="submit" value="upload" name="submit">
        </form>
    </body>
</html>

<?php
    if($_POST['submit']){
        $filename = $_FILES["uploadfile"]["name"];
        $tempname = $_FILES["uploadfile"]["tmp_name"];
        
        $aa = $_POST["comment"];
        $bb = $_POST["name"];
        $cc = $_POST["place"];
        
        $folder = "std/".$filename;
        
        move_uploaded_file($tempname, $folder);
        //echo $folder;
        $in++;

        if($folder!=""){
            $query = "INSERT INTO comments(comment, name, place, source) VALUES('$aa','$bb','$cc','$folder')";
            $data = mysqli_query($conn, $query);
            
            if($data){
                echo "INSERTED";
                ?>
                <META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost/foodmood/web1.php">
                <?php
            }
            else{
                echo "NOT INSERTED";
            }
        } 
    }
?>