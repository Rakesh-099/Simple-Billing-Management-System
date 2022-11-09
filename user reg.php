<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "helpify";
$conn = new mysqli($servername, $username, $password,$dbname);
if($conn->connect_error)
{
  die("connection failed:" .$conn->connect_error);
}
$p3="";
  if(isset($_POST["submitted"]))
  {
      $name=$_POST["named"];
      $address=$_POST["addressed"];
      $pincode=$_POST["pincoded"];
      $emailid=$_POST["mailid"];
      $phoneno=$_POST["phnod"];
      $passwordi=$_POST["passworded"];
      $sql2="SELECT * FROM user_data WHERE PHONE_NO='$phoneno';";
      $res2=$conn->query($sql2);
      if($res2->num_rows>0)
      {
        $p3= "*already you have account please go to login";
      }
      else
      {
        $p3= "*data entered please go to login";

      $sql="INSERT INTO user_data VALUES ('$name','$address','$pincode','$phoneno','$emailid','$passwordi')";
      $result=$conn->query($sql);
    }

}
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <title>user registration</title>
    <meta name="description" content="this is desription">
    <link rel="stylesheet" href="styles.css?VERSION=2">
  </head>
  <body class="back">
    <h1 class="head4"
      <h1 class="head2" style="color:white;">User Registration</h1>
    <div class="boxer">
      <form class="" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) ?>" method="post">
        <div class="">
          <label class="pad1" for="name">Name&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:*</label>
          <input class="nn" type="text" name="named" value="" required>
        </div>
        <br>
        <div class="">
          <label class="pad1" for="name">Address&nbsp&nbsp&nbsp&nbsp:*</label>
          <input class="nn" type="text" name="addressed" value="" required>
        </div>
        <br>
        <div class="">
          <label class="pad1" for="name">Pincode&nbsp&nbsp&nbsp&nbsp&nbsp:*</label>
          <input class="nn" type="number" name="pincoded" value="" required>
        </div>
        <br>
        <div class="">
          <label class="pad1" for="name">Phone no&nbsp&nbsp&nbsp:*</label>
          <input class="nn" type="number" name="phnod" value="" required>
        </div>
        <br>
        <div class="">
          <label class="pad1" for="name">Email_ID&nbsp&nbsp:*</label>
          <input class="nn" type="email" name="mailid" value="" required>
        </div>
        <br>
        <div class="">
          <label class="pad1" for="name">Password&nbsp&nbsp:*</label>
          <input class="nn" type="password" name="passworded" value="" required>
        </div>
        <br>
        <input class="inn8" type="submit" name="submitted" value="sign-up">
        <br>
        <br>
        <a href="user login.php">Already Registered?</a>
      </form>
    </div>
    <div class="info">
      <h2 style="color:white;"><?php echo $p3; ?></h2>
    </div>
  </body>
</html>
