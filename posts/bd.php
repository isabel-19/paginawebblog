<?php
    require_once 'dbconexion.php';
    $conexion = new mysqli($hn, $un, $pw, $db,$port);
    if ($conexion->connect_error) die ("Fatal error");

   
?>