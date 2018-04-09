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
  

  </body>
</html>
