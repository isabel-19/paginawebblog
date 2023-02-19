
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuarios</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
	<div >
		<form method="POST" action="add.php">
		<h2>Agregar Usuario</h2>
			<label>Nombre Usuario:</label><input type="text" name="usuanom"></br></br>
			<label>Nombre:</label><input type="text" name="nombre"></br></br>
			<input type="submit" name="add">
			<a href="../inicio.php">Volver</a>

		
		
		</form>
	</div>
	<br>
	<div>
		<table class="content-table">
			<thead>
				<th>Nombre Usuario</th>
				<th>Nombre</th>
				<th></th>
			</thead>
			<tbody>
				<?php
					include('../dbconexion.php');
					$query=mysqli_query($conn,"select * from `usuario`");
					while($row=mysqli_fetch_array($query)){
						?>
						<tr>
							<td><?php echo $row['usuanom']; ?></td>
							<td><?php echo $row['nombre']; ?></td>
							<td>
								<a href="edit.php?id=<?php echo $row['id']; ?>" class="letra">Edit</a>
								<a href="delete.php?id=<?php echo $row['id']; ?>"class="le" >Delete</a>
							</td>
						</tr>
						<?php
					}
				?>
			</tbody>
		</table>
	</div>
</body>
</html>