<?php
  include 'config.php';

  $uid = $_REQUEST['username'];
  $pwd = $_REQUEST['password'];

  $sql = "SELECT username='$uid' AND password='$pwd' FROM employees";
  $result = mysqli_query($link, $sql);

  if (mysqli_num_rows($result)) {
	  
    header("location: addData-user.html");
  } else {
    echo "Your username or password is incorrect!";
  }

?>