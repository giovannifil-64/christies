<?php
/* Attempt MySQL server connection.*/

include 'config.php';

//require_once "config.php";

 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$first_name = mysqli_real_escape_string($link, $_REQUEST['name']);
$last_name = mysqli_real_escape_string($link, $_REQUEST['surname']);
$employeeId = uniqid('', true);
$fiscalCode = mysqli_real_escape_string($link, $_REQUEST['fiscal_code']);
$birthdate = mysqli_real_escape_string($link, $_REQUEST['birth']);
$homeAddress = mysqli_real_escape_string($link, $_REQUEST['address']);
$phoneNumber = mysqli_real_escape_string($link, $_REQUEST['phone']);
//$assignment = mysqli_real_escape_string($link, $_REQUEST['role']);
//mysqli_real_escape_string($link, $_REQUEST['id'])
$selectOption = $_POST['taskOption'];


$usernameAccount = mysqli_real_escape_string($link, $_REQUEST['username']);
$passwordAccount = mysqli_real_escape_string($link, $_REQUEST['password']);
 
// Attempt insert query execution
$sql = "INSERT INTO employees (id, name, surname, fiscal_code, birth, address, phone, office, username, password) VALUES ('$employeeId', '$first_name', '$last_name', '$fiscalCode', '$birthdate', '$homeAddress', '$phoneNumber', '$selectOption', '$usernameAccount', '$passwordAccount')";

// Check if record is added
if(mysqli_query($link, $sql)){
    echo "<h3>Records added successfully.</h3>";
} else{
    echo "<h3>ERROR: Could not able to execute $sql.</h3>" . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>employee added</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body{ font: 14px sans-serif; }
        .wrapper{ width: 350px; padding: 20px; }
    </style>
	
	
	
	
	
	
	
	
	
	
	
	
<style>
.button {
  
  font-family: 'Open Sans', sans-serif;
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 10px;
  cursor: pointer;
  }

.button3 {border-radius: 7px;
background-color: #0076ff;}
.button4 {border-radius: 7px;
background-color: red;}

</style>
	
	
<style> 
@import url(//fonts.googleapis.com/css?family=Open+Sans);

@media (prefers-color-scheme: light) {
	
	body {
		background-color: #ffffff;
		font-family: 'Open Sans', sans-serif;
		font-size: 16px;
		line-heught: 24px;
		padding: 10px;
	}
	
	h2 {
		color: #000000;
	}
	
	h3 {
		color: #000000;
	}
	
	p {
		color: #000000;
	}
	
	label {
		font-family: 'Open Sans', sans-serif;
		color: #000000;
		padding: 10px;
		style="font-weight:bold"
	}
	
	input{
		border-radius: 25px;
		border: none;
		padding: 10px;
		text-align: center;
		height: 12px;
		background: #ededed;
		font-family: 'Open Sans', sans-serif
	}
}

@media (prefers-color-scheme: dark) {
	body {
		background-color: #2F3435;
		font-family: 'Open Sans', sans-serif;
		font-size: 16px;
		line-heught: 24px;
		padding: 10px;
	}
	
	h2 {
		color: #ffffff;
	}
	
	h3 {
		color: #ffffff;
	}
	
	p {
		color: #ffffff;
	}
	
	label {
		font-family: 'Open Sans', sans-serif;
		color: #ffffff;
		padding: 10px;
		style="font-weight:bold"
	}
	
	input {
		border-radius: 25px;
		border: 2px;
		padding: 10px;
		text-align: center;
		height: 12px;
		background: white;
		font-family: 'Open Sans', sans-serif
	}
	
	select {
		font-family: 'Open Sans', sans-serif
	}
	
}

</style>
	
</head>
<body>

<p>Go back and <a href="addData.html">add a new user</a>.</p>


</body>
</html>