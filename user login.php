<?php
  $servername="localhost";
  $username="root";
  $password="";
  $dbname="helpify";
  $conn=new mysqli($servername,$username,$password,$dbname);
  if($conn->connect_error)
  {
    die("connection error:".$conn->connect_error);
  }
  $p4="";
  if(isset($_POST["submitted"]))
  {
    $ph=$_POST["ph"];
    $pas=$_POST["pas"];
    $sql1="SELECT PASSWORD FROM user_data WHERE PHONE_NO='$ph'AND PASSWORD='$pas';";
    $res1=$conn->query($sql1);
    if($res1->num_rows>0)
    {
      session_start();
      $_SESSION['user_id']="$ph";
      header('location:user_home.php');
    }
    else {
      $p4= "*please enter valid details";
    }
  }
 ?>

<!DOCTYPE html>
<html lang="" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>user login</title>
    <meta name="description" content="this is desription">
    <link rel="stylesheet" href="styles.css?VERSION=4">
  </head>
  <body class="back">
    <h3 class="head3"
      <h1 class="head2" style="color:white;">User Login</h3>
    <div class="box5">
      <form class="" action="<?php echo  htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <div class="pad4">
          <label class="pad4">Phone no :</label>
          <input class="in" type="number" name="ph" value="" required>
        </div>
        <br>
        <div class="pad4">
          <label class="pad4">Password :</label>
          <input class="in" type="password" name="pas" value="" required>
        </div>
        <br>
        <div class="submit">
          <input class="inn8" type="submit" name="submitted" value="sign-in">
        </div>
      </form>
    </div>
    <div class="info">
      <h2 style="color:white;"><?php echo $p4; ?></h2>
    </div>
  </body>
</html>
