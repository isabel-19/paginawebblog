<?php 
include("blo.html");

session_start();



 ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/0000000.css">
    <title>Admin</title>
</head>
<body>
<div class="side-menu">
        <div class="brand-name">
     <h1>Hello, <?php if (isset($_SESSION['id']) && isset($_SESSION['usuanom'])) { echo $_SESSION['nombre'];} ?></h1>
     </div>
     <ul>
            <li><a href="perfil.php" class="btn">Perfil</a></li>
           <li><a href="usuario/usuainde.php" class="btn">Usuarios</a></li> 
            <li><a href="posts/agregar_post.html" class="btn">Add Blog</a></li>
           <li> <a href="salir.php" class="btn">Logout</a></li>
    </div>

    <div class="container">
        <div class="header">
         
            </div>
        </div>
 
</body>
</html>


 