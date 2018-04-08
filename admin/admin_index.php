<?php
require_once('phpscripts/config.php');
 confirm_logged_in();
 first_log();

 ?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>CMS Homepage</title>
    <link rel="stylesheet" href="../css/login.css">
  </head>
  <body>
    <header>
      <ul>
      <li >
        <a class="logout" href="admin_login.php">LOGOUT</a>
      </li>

      <li >
        <a class="loginimg" href="../index.php"> <img src="../images/home.png" alt="">
        </a>
      </li>
      </ul>
    </header>

    <section class="login-box">
    <div class="center-2">
        <?php
        echo "<h1> Good morning {$_SESSION['user_name']}!</h1>";
        ?>
    </div>

        <p>
        <?php
        if (isset($_GET['user_date'])) {

          $date=$_GET['user_date'];

          $myQuery = "SELECT {$date} FROM tbl_user WHERE user_id={$id}";
        //echo $myQuery;
          $result = mysqli_query($link, $myQuery);
        //echo $result;
          //$row = mysqli_fetch_assoc($result);
        }
        echo "<p> {$result} </p>";
        ?>
      </p>

      <a class="link1 click" href="admin_add.php">ADD MOVIE</a>
      <a class=" click" href="admin_edit.php">EDIT MOVIE</a>
      <a class="click" href="admin_delete.php">DELETE MOVIE</a>
    </section>
  </body>
</html>
