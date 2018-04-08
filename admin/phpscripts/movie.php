<?php

function editMovie($cover, $title, $year, $run, $story, $trailer, $release, $genre){
  include('connect.php');
$updatestring = "UPDATE tbl_movies SET movies_cover = '{$cover}', movies_title = '{$title}', movies_year = '{$year}', movies_runtime = '{$run}', movies_storyline = '{$story}', movies_trailer = '{$trailer}', movies_release = '{$release}'    WHERE user_id = {$id} ";
//echo $updatestring;
$updatequery = mysqli_query($link, $updatestring);
if($updatequery){
redirect_to("admin_index.php");
}else{
  $message="There was a problem changing your information, please contact your admin. ";
}
mysqli_close($link);
}

function deleteMovie($id){
  //echo $id;
  include('connect.php');
  $delstring = "DELETE FROM tbl_movies WHERE movies_id = {$id}";
  $delquery = mysqli_query($link, $delstring);

  if($delquery){
    redirect_to("../admin_index.php");
  }else{
    $message = "Error, contact your admin";
    return $message;
  }

  mysqli_close($link);
}




 ?>
