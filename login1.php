<?php 
session_start(); 
include "dbconexion.php";

if (isset($_POST['uname']) && isset($_POST['password'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$uname = validate($_POST['uname']);
	$pass = validate($_POST['password']);

	if (empty($uname)) {
		header("Location: login.php?error=User Name is required");
	    exit();
	}else if(empty($pass)){
        header("Location: login.php?error=Password is required");
	    exit();
	}else{
		$sql = "SELECT * FROM usuario WHERE usuanom ='$uname' AND contraseña ='$pass'";

		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['usuanom'] === $uname && $row['contraseña'] === $pass) {
            	$_SESSION['usuanom'] = $row['usuanom'];
            	$_SESSION['nombre'] = $row['nombre'];
            	$_SESSION['id'] = $row['id'];
            	header("Location: inicio.php");
		        exit();
            }else{
				header("Location: inicio.php?error=Incorect User name or password");
		        exit();
			}
		}else{
			header("Location: inicio.php?error=Incorect User name or password");
	        exit();
		}
	}
	
}else{
	header("Location: inicio.php");
	exit();
}