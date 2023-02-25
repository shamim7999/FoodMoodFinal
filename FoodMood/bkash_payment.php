<?php
    include("connection.php");
    error_reporting(0);

   
                                  $a1 = $_GET['firstname'];
                                  $a2 = $_GET['lastname'];
                                  $a3 = $_GET['email'];
                                  $a4 = $_GET['arrive'];
                                  $a5 = $_GET['leave'];
                                  $a6 = $_GET['r1'];
                                  $a7 = $_GET['district'];
                                  $a8 = $_GET['place'];
                                  $a9 = $_GET['pay'];
                             
    
?>
<html><head>
    <meta charset="utf-8">
    <meta name="description" content="bKash PGW Tokenized Payment with Valid Agreement">
    <meta name="author" content="Tahniat Ashraf Priyam">
    <title>Payment with Agreement</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/tokenized.css">
    <link rel="stylesheet" href="assets/css/style.css" type="text/css">
    <link rel="shortcut icon" type="image/x-icon" href="../../../assets/favicon.ico/favicon-32x32.png">
	
</head>
<style>
  .des{
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
  }
</style>
    <body class="bg-light">
        <div id="tokenized-0001">
          <div class="container">
            <div class="row">
              <div class="col-md-12 order-md-1">
                <div id="header">
                  <div id="banner" class="row">
                    <div class="col-12">
                      <div class="logoHolder">
                        <img src="assets/images/bkash_payment_logo.png" alt="bKash_logo" class="bannerLogo">
                      </div>
                    </div>
                  </div>
                  <div id="type" class="row">
                    <div class="col-12">
                                &nbsp;
                            </div>
                          </div>
                          <div id="payment" class="row">
                            <div class="row">
                              <div class="col-md-3">

                              </div>
                              <div id="merchant_logo_holder" class="col-md-6">
                                <div id="merchant_logo">
                                  <img src="assets/images/chayachobi.jpg" id="merchantImageID" class="img-responsive">
                                </div>
                              </div>
                              <div class="col-md-3">

                              </div>
                            </div>
                            <div id="merchant_data">
                              <div class="row">
                                <div id="merchant_name" class="col-md-12">
                                  <b>Merchant Name</b>:
                                  <span>FoodMood</span>
                                </div>
                              </div>
                              <div class="row">
                                <div id="invoice_number" class="col-md-12">
                                  <b>Invoice Number</b>: <span>202000000</span>
                                </div></div>
                                <!-- <div class="row">
                                  <div id="amount" class="col-md-12">



                                    <b>Amount</b>: BDT <span>219.00</span>



                                  </div> -->
                                </div>
                              </div>
                            </div>
                          </div>
                          <div id="form">

                          <form action="" method="post" id="tokenized_form">
                              
                              

                              <div class="row form-item">
                                <div class="col-md-12">
                                  <label for="wallet">Your bKash Account Number</label>
                                  <input type="text"  name="number" id="wallet" maxlength="11" placeholder="e.g 01XXXXXXXXX"  class="form-control">
                                </div>
                              </div>
                              <div class="row form-item">
                                <div class="col-md-12">
                                  <label for="password">Enter PIN</label>
                                  <input type="password" id="password" placeholder="bKash PIN" maxlength="5" autocomplete="off" class="form-control"></div>
                                </div>
                                <div id="toc" class="row form-item">
                                  <div class="col-12">
                                    By clicking 'Proceed', you agree to the <a href="https://www.bkash.com/tokenized_checkout" target="_blank"> terms and conditions</a>
                                  </div>
                                </div>
                                <div id="button_panel" class="row">
                                  <form class="" action="#" method="post">
                                    <span class="col-6">
                                      <button type="button" id="close"  class="col-6 negative-button">Close</button>
                                    </span>
                                  </form>

                                    <span class="col-6">
                                      <input type="submit" class="des" value="Submit" id="button" name="submit"/>
                                    </span>

                                </div>
                                <div id="message_container" class="row">
                                  <span class="col-12"></span></div> <div id="footer" class="row">
                                    <span class="col-12"><b>Helpline</b>: 16247. <b>Version</b>: 1.2.0-beta
                                    </span>
                                  </div>
                                </form>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
        <script src="assets/js/axios.0.19.2.min.js"></script>
        <script src="assets/js/vue.2.5.22.js"></script>
        <script src="assets/js/master.1.0.js"></script>
        <script src="assets/js/v1.2.0-beta/0001.js"></script>

</body></html>
<?php
                if(isset($_POST['submit'])){
                 //   $rn = $_POST['id'];
                    $fn = $a1;
                    $ln = $a2;
                    $em = $a3;
                    $py = $a9;
                    $gender = $a6;
                    $arrive =$a4;
                    $leave = $a5;
                    $district = $a7;
                    $place = $a8;
                    $bk = $_POST['number'];
                    $py.=' Dollars';
                    $app = 0;
                    if($fn!="" && $ln!="" && $em!="" && $gender!="" && $arrive!="" && $leave!=""){
                        $query = "INSERT INTO pending(fullname, address, email, Gender, orderDate, total, catagory, items, pay, bkash_number, approved) VALUES('$fn', '$ln', '$em', '$gender', '$arrive', '$leave', '$district', '$place', '$py', '$bk', '$app')";
                        $data = mysqli_query($conn, $query);
                        if($data){
                            echo "<script>alert('Record Inserted!')</script>";
                            ?>
                            <META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost/foodmood/web1.php">
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