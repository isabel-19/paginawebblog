<?php
	include('../dbconexion.php');
	
	$uname=$_POST['usuanom'];
	$name=$_POST['nombre'];
		
	mysqli_query($conn,"insert into `usuario` (usuanom,nombre) values ('$uname','$name')");
	header('location:usuainde.php');
	
?>