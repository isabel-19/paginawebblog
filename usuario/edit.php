<?php
	include('../dbconexion.php');
	$id=$_GET['id'];
	$query=mysqli_query($conn,"select * from `usuario` where id='$id'");
	$row=mysqli_fetch_array($query);
?>
<!DOCTYPE html>
<html>
<head>
<title>Basic MySQLi Commands</title>

</head>
<body>
	<h2>Editar</h2>
	<form method="POST" action="update.php?id=<?php echo $id; ?>">
		<label>Nombre Usuario:</label><input type="text" value="<?php echo $row['usuanom']; ?>" name="usuanom">
		<label>Nombre:</label><input type="text" value="<?php echo $row['nombre']; ?>" name="nombre">
		<input type="submit" name="submit">
		<a href="usuainde.php">Volver</a>
	</form>
</body>
</html>