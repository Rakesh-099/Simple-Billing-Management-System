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
if($_SESSION['merch_id'])
{
  $user_id=$_SESSION['user_idm'];
  $merch_id=$_SESSION['merch_id'];

}
else {
  header('location:who are you.php');
}
if(isset($_POST["per"]))
{

  $code=$_POST["code"];
  $sqlg="SELECT CODE FROM permit WHERE MERCH_ID =$merch_id AND USER_ID=$user_id;";
  $resg=$conn->query($sqlg);
  $com="";
  if ($resg->num_rows > 0)
  {
    while($row = $resg->fetch_assoc())
     {
        $com=$row["CODE"];
     }
  }
  if($com==$code)
  {

    $_SESSION['user_idm']=$user_id;
    $_SESSION['merch_id']=$merch_id;
    $_SESSION['code']=$code;
    header('location:unpaid2.php');
  }
  else {
    echo "no such code exits for user with id ",$user_id;
  }
}
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>codetype</title>
    <meta name="description" content="this is desription">
    <link rel="stylesheet" href="styles1.css">
  </head>
    <body>
      <header class="mainhead">
        <h3>get permit with code</h3>
      </header>
      <br>
      <div class="boxes">
        <div class="add2">
          <form class="" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) ?>" method="post">
          <div class="m">
              <label for="name">code*:</label>
              <input type="text" name="code" value="" required>
          </div>
          <br>
          <div >
            <input class="sub" type="submit" name="per" value="get permit">
          </div>
        </form>
        </div>
      </div>
  </body>
</html>
