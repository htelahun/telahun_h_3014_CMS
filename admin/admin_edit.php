<?php
//init_set('display_errors', 1);//mac
error_reporting(E_All); //mac

require_once('phpscripts/config.php');
 confirm_logged_in();

$tbl = "tbl_movies";
$movie = getAll($tbl);

if(isset($_GET['id'])){
$tbl = "tbl_movies";
$col = "movies_id";
$id = $_GET['id'];

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

    <ul class="position ">
      <li class="movies">
        <?php
        while($row = mysqli_fetch_array($movie)){
          //    <a href=\"admin_editSingle.php?id={$row['movies_id']}\">EDIT</a>
          echo "
          <p class=\"movie-t\">{$row['movies_title']}</p>

          <a href=\"admin_editSingle.php?id={$row['movies_id']}\">

          <button class=\"btn-e\" type=\"submit\" name=\"submit\">EDIT</button>
          </a>

          <br><br>";
          }
        ?>
      </li>
    </ul>

</script>
  </body>
</html>
