<?php
session_start();
include 'Db.php';
$sql="SELECT * FROM alumno INNER JOIN curso ON alumno.idCurso = curso.id";
?>


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ciclo Básico</title>
    <link rel="stylesheet" href="..\boletines\css\Tabla.css">
</head>
<style>  
.pino{
    align-items: center;
	font-family:monospace;
    font-size: 20px;
	color:#03093f;
   padding:10px 5px;
}

.form{
   padding:10px;
}

.inp{
    padding: 10px;
    border-radius: 5px;
    border: 0px;
    width: 200px;
    font-size: 1rem;
}

.button{
    background-color:#8389db;
    width: 45px;
    height: 40px;
    margin-top: 40;
    bottom: 0;
    right: 200px;
    margin: auto;
    border-radius: 5px;
    cursor: pointer;
}

.button:hover{
    background-color: #243063;
}
</style>
<body>
<center>
   <div class="pino">
      <p>SELECCIONE UN ALUMNO Y CARGUE LAS NOTAS</p>
      <form action= 'ResultadoBusqueda.php' method = 'post' class="form">
         <input type='text' name='busqueda' placeholder='Inicie su busquedad' class='inp'>
         <input type = 'submit'  value= '🔎' class='button'/>
      </form>
   </div>

<?php
 tabla($sql);?>
</center>
</body>
</html>