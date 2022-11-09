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
session_start();
if($_SESSION['user_id'])
{
  $user_id=$_SESSION['user_id'];
}
else {
  header('location:who are you.php');
}
$sql1="SELECT * FROM user_data WHERE PHONE_NO= '$user_id';";
$res1=$conn->query($sql1);
$row=$res1->fetch_assoc();
if(isset($_POST["logout"]))
{
  session_start();
  unset($_SESSION['user_id']);
  header('location:who are you.php');
}
 ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>user_home</title>
    <meta name="description" content="this is desription">
    <link rel="stylesheet" href="styles2.css?VERSION=2">
  </head>
  <body>
    <header class="mainhead">
      <h2 class="texi"><?php  echo $row["NAME"];?></h2>
      <h3 class="texi">you are welcome</h3>
      <nav>
        <form class="" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) ?>" method="post">
        <input type="submit" name="logout" value="logout">
        </form>
      </nav>
    </header>
    <br>
    <div class="boxes">
      <div class="add">
        <form class="" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) ?>" method="post">
          <h3 class="texta">permit merchant</h3>
          <div class="">
            <span class="ui" for="name">merchant id*:</span>
            <input type="number" name="merchid" value="" required>
          </div>
          <br>
          <div class="ui">
            <label for="name">code*&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:</label>
            <input type="text" name="code" value="" required>
          </div>
          <br>
          <div >
            <input class="start" type="submit" name="per" value="permit">
          </div>
        </form>
        <br>
        <span class="warn"><?php
        if(isset($_POST["per"]))
        {
          $merh_id=$_POST["merchid"];
          $code=$_POST["code"];
          $sqlp="INSERT INTO permit VALUES('$merh_id','$user_id','$code');";
          $resp=$conn->query($sqlp);
          session_start();
          $_SESSION['merch_id']="$merh_id";
          $_SESSION['user_id']="$user_id";
          $_SESSION['code']="$code";
          header('location:view.php');
        }
         ?></span>
      </div>

      <div class="add">
        <form class="" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) ?>" method="post">
          <h3 class="texta">view transactions</h3>
          <div class="">
            <span class="ui">merchant_id *:</span>
            <span> <input type="number" name="mer2" value=""></span>
          </div>
          <br>
          <div class="ui">
            <span><input type="radio" name="pay2" value="P" required>paid </span>
            <span><input type="radio" name="pay2" value="U" required>unpaid </span>
          </div>
          <br>
          <div >
            <input class="start" type="submit" name="submit2" value="view">
          </div>
          <br>
        </form>

        <form class="" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) ?>" method="post">
          <div class="texta" >
              <a  href="merdetails.php" target="_blank"> get your merchant details</a>
          </div>
        </form>
        <br>
        <span class="warn"><?php
        if(isset($_POST["submit2"]))
        {
          $merch_id2=$_POST["mer2"];
          $sqlp2="SELECT * from merchant_data WHERE PHONE_NO='$merch_id2';";
          $resp2=$conn->query($sqlp2);
          $rowp2=$resp2->fetch_assoc();
          $type2=$_POST["pay2"];
          if($resp2->num_rows>0)
          {
              session_start();
              $_SESSION['user_idu']="$user_id";
              $_SESSION['merch_idu']="$merch_id2";
              $_SESSION['statusu']="$type2";
              header('location:yourdetails.php');

          }
          else
          {
            echo "*no user exits";
          }
        }

         ?></span>
      </div>

    </div>
  </body>
</html>
