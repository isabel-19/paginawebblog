<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=EDGE">
        <title>Agregar POst</title>
        <link rel="stylesheet" href="stylesheet.css">
        <link rel="stylesheet" href="">
        <script type="text/javascript" src="tinymce/js/tinymce/tinymce.min.js"></script>
        <style>

            *{
                margin: 0;
                font-family: "Cabin";
                padding: 0;

            }
            body{
                background: #eee;

            }
            #caja{
                width: 600px;
                
                position: center;
                background-color: white;
                box-shadow: 0 0 2px #ccc;
                margin: auto;
                padding: 40px;
            }
            input[type="text"]{
                width: 570px;
                padding: 5px 10px;
                border: 1px solid #ccc;
            }
            #descripcion{
                width: 575px;
                padding: 5px 10px;
                border: 1px solid #ccc;
                margin-top: 5px;
                padding: 20px;  
            }
            input[type="file"]{
                padding: 20px; 
                

            }
            label{
                margin-top: 50px;
                padding: 5px 10px;
                border: 1px solid #ccc;
                display: inline-block;
            }
            select{
                
                padding: 5px 10px;
                border: 1px solid #ccc;

            }
            input[type="submit"]{
                padding: 5px 10px;
                border:1px solid #ccc;
                background: teal;
                color:white;

            }

               

  
  </style>



<script>
      tinymce.init({selector: "#contenido",
      height: 500,
      width: 600,
      statusbar: false,
      menubar: false,
      language : "es",
      plugins: ["advlist autolink autosave link image lists charmap preview hr anchor spellchecker","searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking","table contextmenu directionality emoticons template textcolor paste textcolor colorpicker textpattern"],toolbar1: "newdocument | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | cut copy paste | bullist numlist | outdent indent | undo redo | link unlink image media | preview | forecolor backcolor | formatselect",toolbar3: "subscript superscript | emoticons",toolbar_items_size: 'small',content_css: ['//fast.fonts.net/cssapi/e6dc9b99-64fe-4292-ad98-6974f93cd2a2.css','//www.tinymce.com/css/codepen.min.css']});

 
 </script>
    




</head>

<body>
    <div id="caja">
        <form action="procesaragregar.php"  method="POST" enctype="multipart/form-data">
            <input type="text" name="titulo" id="" placeholder="Titulo del Post">
            <textarea name="descripcion" id="descripcion" placeholder="Descripcion del Post"></textarea>
            <label for="imagen">Subir Imagen</label>
            <input type="file" name="imagen" id ="">
            <label for="">Categoria</label>
            <select name="categoria" id=""> 
            <optgroup label="Categoria">
                <option value="Programacion">Programacio</option>
                <option value="Cultura">Cultura</option>
                <option value="Training">Training</option>
            </optgroup>
            </select>

            <label for="Contenido Completo del Post "></label>
            <textarea name="contenido" id="contenido"   ></textarea>
            <input type="submit" value="Agregar Post">

        
        </form>

        <tbody>
				<?php
					include('dbconexion.php');
					$query=mysqli_query($conn,"select * from `post`");
					while($row=mysqli_fetch_array($query)){
						?>
						<tr>
							<td><?php echo $row['titulo']; ?></td>
							<td><?php echo $row['contenido']; ?></td>
							<td>
								<a href="edit.php?id=<?php echo $row['id']; ?>" class="letra">Edit</a>
								<a href="delete.php?id=<?php echo $row['id']; ?>"class="le" >Delete</a>
							</td>
						</tr>
						<?php
					}
				?>
			</tbody>

        

    </div>
</body>
</html>


    


