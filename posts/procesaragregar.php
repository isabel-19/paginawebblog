<?php

include("bd.php");





if($_FILES['imagen']['error']) {
    switch($_FILES['imagen']['error']){
      case 1:
        echo "el tamaño del archivo exede del servidor";
        break;
      }}
    else{
      echo "entrada correctamente<br/>";
      if((isset($_FILES['imagen']['name'])&&($_FILES['imagen']['error']==UPLOAD_ERR_OK))){
        $destino_de_ruta="imagenes/";
        move_uploaded_file($_FILES['imagen']['tmp_name'],$destino_de_ruta . $_FILES['imagen']['name']);
        echo "el archivo" . $_FILES['imagen']['name'] . "se a copiado al directorio de imagenes";
    
      }else{
        echo "el archivo no se ha podido copiar al directorio de imagenes";
      }}
      $titulo=$_POST["titulo"];
      $descripcion=$_POST["descripcion_post"];
      $categoria=$_POST["categoria"];
      $contenido=$_POST["contenido"];
      
      $nombre_imagen=$_FILES["imagen"]["name"];
    
    
      $consulta="INSERT INTO post (id,autor,fecha,categoria,titulo,imagen,descripcion_post,contenidocompleto) 
      VALUES ('','Isabel',NOW(),'" . $categoria ."','" . $titulo ."','" . $nombre_imagen . "','" . $descripcion . "','" . $contenido . "')" ;
      
    $resultado=mysqli_query($conexion,$consulta);
    mysqli_close($conexion);
    echo "<br/> se agregado con exito.<br/><br/>";
    header("Location: ../mostrarpost.php");
    




