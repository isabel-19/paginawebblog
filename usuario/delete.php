<?php
	$id=$_GET['id'];
	include('../dbconexion.php');
	mysqli_query($conn,"delete from `usuario` where id='$id'");
	header('location:usuainde.php');
?>