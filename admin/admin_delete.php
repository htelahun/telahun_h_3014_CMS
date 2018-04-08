<?php
//init_set('display_errors', 1);//mac
//error_reporting(E_All); //mac

require_once('phpscripts/config.php');
 //confirm_logged_in();
$tbl = "tbl_movies";
$user = getAll($tbl);

 ?>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
      <link rel="stylesheet" href="../css/login.css">
    <title>Delete Movie</title>
  </head>
  <body>
    <header>
      <ul>
      <li >
        <a class="loginimg" href="admin_index.php"> <img src="../images/back.png" alt="">
        </a>
      </li>
      </ul>
        <h1 class="header">DELETE MOVIES</h1>
    </header>

<section>
  <div >
  <ul class="position">
    <li class="movies">
      <?php
      while($row = mysqli_fetch_array($user)){
        //
        echo "<p class=\"movie-t\">{$row['movies_title']}</p> <a href=\"phpscripts/caller.php?caller_id=delete&id={$row['movies_id']}\"> <button class=\"btn\">Delete Movie</button></a><br><br>";
        }
       ?>
     </li>
   </ul>
 </div>
</section>

  </body>
</html>
