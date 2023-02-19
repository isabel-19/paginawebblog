<?php

$sname= "localhost";
$unmae= "root";
$password = "";
$db_name = "altamiranosisa";
$port = 3360;

$conn = mysqli_connect($sname, $unmae, $password, $db_name,$port);

if (!$conn) {
	echo "Connection failed!";
}


?>

