<?php
//
require_once('phpscripts/config.php');

$tbl = "tbl_genre";
$genQuery = getAll($tbl); //returns an object
//  echo $genQuery;



if(isset($_POST['submit'])){
$cover = $_FILES['cover']; //may have issues, it doesnt go in _POST
$title = $_POST['title'];
$year = $_POST['year'];
$run = $_POST['run'];
$story = $_POST['story'];
$trailer = $_POST['trailer'];
$release = $_POST['release'];
$genre = $_POST['genList'];

$result = addMovie($cover, $title, $year, $run, $story, $trailer, $release, $genre);
$message = $result;
}
?>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
      <link rel="stylesheet" href="../css/login.css">
    <title>Add Movie</title>
  </head>
  <body>
    <header>
      <ul>
      <li >
        <a class="loginimg" href="admin_index.php"> <img src="../images/back.png" alt="">
        </a>
      </li>
      </ul>
        <h1 class="header">ADD A MOVIE</h1>
    </header>

    <?php if(!empty($message)){echo $message;} ?>
      <form action="admin_add.php" method="post" enctype="multipart/form-data"><!--default to text only in form. wont work for img or video. multipart expects something other than text there. Allows for upload of files. takes care of going to the server for us-->
        <label style="color:white;font-weight:bold;" class="mid">COVER IMAGE</label>
        <input style="color:white;" class="center-input" type="file" name="cover"><!--its an image. gives you the option to browse locally-->
          <br><br>
        <label style="color:white;font-weight:bold;" class="mid">MOVIE TITLE </label>
        <input class="center-input" type="text" name="title"  value="">
            <br><br>
          <label style="color:white;font-weight:bold;" class="mid ">MOVIE YEAR </label>
          <input class="center-input" type="text" name="year" value="">
              <br><br>
          <label style="color:white;font-weight:bold;" class="mid">MOVIE RUNTIME </label>
          <input class="center-input" type="text" name="run" value="">
                <br><br>
          <label style="color:white;font-weight:bold;" class="mid">MOVIE STORYLINE </label>
          <input class="center-input" type="text" name="story"  value="">
                  <br><br>
          <label style="color:white;font-weight:bold;" class="mid">MOVIE TRAILER</label><!--left as text only cuz we dont have video-->
          <input class="center-input" type="text" name="trailer" value="">
                    <br><br>
         <label style="color:white;font-weight:bold;" class="mid">MOVIE RELEASE DATE </label>
         <input class="center-input" type="text" name="release"  value="">
                      <br><br>
        <label style="color:white;font-weight:bold;" class="mid">MOVIE GENRE </label>
        <select class="mid center-input" name="genList">
            <option>Select a movie genre</option>
            <?php
              while($row = mysqli_fetch_array($genQuery)){
                echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
              }
            ?>
        </select><br><br>

        <input class="center-btn2" type="submit" name="submit" value="ADD MOVIE">
      </form>

  </body>
</html>
