<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);
echo '<h2>You have searched for the objects in: '.$_POST['name'];

$conn = new PDO('mysql:host=localhost;dbname=christies','root','root', 
		array(PDO::ATTR_ERRMODE=> PDO::ERRMODE_EXCEPTION));


$sql = "SELECT * FROM objects WHERE object_location = :name";

$res_prepare = $conn->prepare($sql);

$res_prepare->bindValue(':name', $_POST['name']);

$res_prepare->execute();

while( ($row = $res_prepare->fetch()) !== false ){
	
	echo'<h3>'.$row['name'].'</h3>' .$row['description'];
	
}

?>