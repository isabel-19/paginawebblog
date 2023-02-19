<?php 
session_start(); 
include "dbconexion.php";

if (isset($_POST['uname']) && isset($_POST['password'])
    && isset($_POST['name']) && isset($_POST['re_password'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$uname = validate($_POST['uname']);
	$pass = validate($_POST['password']);

	$re_pass = validate($_POST['re_password']);
	$name = validate($_POST['name']);

	$user_data = 'uname='. $uname. '&name='. $name;


	if (empty($uname)) {
		header("Location: registro.php?error=User Name is required&$user_data");
	    exit();
	}else if(empty($pass)){
        header("Location: registro.php?error=Password is required&$user_data");
	    exit();
	}
	else if(empty($re_pass)){
        header("Location: registro.php?error=Re Password is required&$user_data");
	    exit();
	}

	else if(empty($name)){
        header("Location: registro.php?error=Name is required&$user_data");
	    exit();
	}


	else{

		// hashing the password
        $pass = md5($pass);

	    $sql = "SELECT * FROM usuario WHERE usuanom='$uname' ";
		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) > 0) {
			header("Location: registro.php?error=Ya existe el nombre de usario prueba otro&$user_data");
	        exit();
		}else {
           $sql2 = "INSERT INTO usuario(usuanom, contraseña, nombre) VALUES('$uname', '$pass', '$name')";
           $result2 = mysqli_query($conn, $sql2);
           if ($result2) {
           	 header("Location: login.php?success=Tu cuenta fue creada exitosamente");
	         exit();
           }else {
	           	header("Location: registro.php?error=unknown error occurred&$user_data");
		        exit();
           }
		}
	}
	
}else{
	header("Location: registro.php");
	exit();
}