<?php

// //ini_set('display_errors',1); //MAC
// //error_reporting(E_All); //MAC
require_once('admin/phpscripts/config.php');
if(isset($_GET['filter'])){
  $tbl = "tbl_movies";
  $tbl2 ="tbl_genre";
  $tbl3 = "tbl_mov_genre";
  $col="movies_id";
  $col2 = "genre_id";
  $col3 = "genre_name";
  $filter= $_GET['filter'];

  $getMovies = filterType($tbl,$tbl2, $tbl3, $col, $col2, $col3, $filter);

}else{
  $tbl= "tbl_movies";
  $getMovies= getAll($tbl);
}

 ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/main.css">
  <title>Movie Reviews</title>
</head>
<body>
  <?php
include('includes/header.html');
if(!is_string($getMovies)){
  while($row= mysqli_fetch_array($getMovies)){
    echo "
<section>
    <div class=\"content\">
        <img class=\"main-thumb\" src=\"images/{$row['movies_cover']}\" alt= \"{$row['movies_title']}\">

        <p class=\"review\">{$row['movies_title']} <br><br> {$row['movies_year']}<br><br>{$row['movies_storyline']} </p>
      </div>
</section>
    ";
  }
}else{
echo "<p class=\"error\">{$getMovies} </p>";
}


  ?>
<script src="js/main.js">  </script>
</body>
</html>
