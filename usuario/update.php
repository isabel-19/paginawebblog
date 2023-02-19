<?php

	include('../dbconexion.php');
	$id=$_GET['id'];
	
	$uname=$_POST['usuanom'];
	$name=$_POST['nombre'];
	
	mysqli_query($conn,"update `usuario` set usuanom='$uname', lastname='$name' where id='$id'");
	header('location:usuainde.php');
?>