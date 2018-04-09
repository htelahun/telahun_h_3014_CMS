<?php
require_once('phpscripts/config.php');

if(isset($_GET['id'])){

	$tbl ="tbl_movies";
	$col = "movies_id";
  $id = $_GET['id'];
	//needs to be in same order as the other pages its linked to i.e. ($tbl,$col,$id)
	$edit = single_edit($tbl, $col, $id);
}
 ?>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
      <link rel="stylesheet" href="../css/login.css">
    <title>Edit Movie</title>
  </head>
  <body>
    <header>
      <ul>
      <li >
        <a class="loginimg" href="admin_index.php"> <img src="../images/back.png" alt="">
        </a>
      </li>
      </ul>
        <h1 class="header">EDIT MOVIES</h1>
    </header>

    <section>
    <?php

    if(!is_string($edit)){
    		$row = mysqli_fetch_array($edit);
    		echo "<form>
          <h2>{$row['movies_title']}</h2>

        </form>";
      } else{
    			echo "<p class=\"error\"> {$edit}</p>";
    		}

     ?>
     </section>

  </body>
</html>
