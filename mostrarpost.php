
<?php
include("blo.html");
?>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/estilos.css">
        
</head>
<body>
<h2>MI BLOG</h2>
<br/>




<?php
include('posts/bd.php');





if(!$conexion){
    echo "la conexion fallo: " . mysqli_error();
    exit();
}

$consulta ="SELECT * FROM post order by fecha DESC";
if ($resultado=mysqli_query($conexion,$consulta)){
    while($registro=mysqli_fetch_assoc($resultado)){
       
        echo "<article>";
        echo "<img src='posts/imagenes/". $registro['imagen'] . "'width=300px'/>";
        echo "<h2>" . $registro['titulo']. "</h2>";
        echo "<span>" . $registro['autor']. "<span>              ";
        echo "<span>" . $registro['fecha']. "<span>               ";
        echo "<span>" . $registro['categoria']. "<span>           ";
        echo "<p>" .$registro ['descripcion_post'] . "</p><br/>";
        echo "<p>" .$registro ['contenidocompleto'] . "</p><br/>";
       

        echo "</article>";
        echo"<hr/>";
    }
}



?>

</body>
</html>