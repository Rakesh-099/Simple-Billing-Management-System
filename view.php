
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
  session_start();
  if($_SESSION['user_id'])
  {
    $user_id=$_SESSION['user_id'];
    $merch_id=$_SESSION['merch_id'];
  }
  else {
    header('location:who are you.php');
  }
  $code=$_SESSION['code'];
  if(isset($_POST["com"]))
  {
    $sqlf="DELETE FROM permit WHERE USER_ID ='$user_id';";
    $resf=$conn->query($sqlf);
    session_start();
    header('location:user_home.php');
  }
 ?>
 <!DOCTYPE html>
 <html lang="en" dir="ltr">
   <head>
     <meta charset="utf-8">
     <title>view</title>
     <meta name="description" content="this is desription">
     <link rel="stylesheet" href="styles1.css?VERSION=10">
   </head>
   <body>
     <header class="mainhead">
       <h3> <?php   echo "you permitted merchent with id ",$merch_id," for code ",$code; ?> </h3>
     </header>
     <br>
     <div class="vi">
       <h2>You Can View Current Transations Here</h2>
     </div>

     <br>
     <div class="tab2">
       <table style="width:100%;">
         <tr style="border-bottom:3mm;">
           <th>PRODUCT_NAME</th>
           <th>PRICE</th>
           <th>QUANTITY</th>
           <th>TOTAL</th>
         </tr>
         <?php
         $to=0;
         $sql2="SELECT * FROM products_data WHERE C_NAME=$merch_id AND STATUS ='U';";
         $res2=$conn->query($sql2);
           if ($res2->num_rows > 0)
           {
             while($row = $res2->fetch_assoc())
              {
             echo  "<tr><td>" .$row["P_NAME"]. "</td><td>".$row["PRICE"]. "</td><td>".$row["QUANTITY"] ."</td><td>".$row["TOTAL"] ."</td><tr>" ;
              }
           }
           $result = "SELECT SUM(TOTAL) AS value_sum FROM products_data WHERE C_NAME='$merch_id';";
           $rowz = $conn->query($result);
           $rowx = mysqli_fetch_assoc($rowz);
           $to = $rowx['value_sum'];
          ?>
       </table>
     </div>
   </div>
   <div class="tf">
   TOTAL :  <label class="tFf"><?php echo $to ?></label>
   </div >
   <br>
     <div class="bot">
       <form class="" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) ?>" method="post">
           <input class="start" type="submit" name="com" value="finish">
       </form>
     </div>
   </body>
 </html>
