<?php
session_start(); 
include 'Db.php';
$sql="SELECT * FROM USUARIO"
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="../boletines/css/Ingresar.css">
<title>Bienvenidos</title>
</head>
<body>
<header class="header">
    <h1>¡INGRESE LAS NOTAS DE LOS ALUMNOS!</h1>
    <button><a href="1a.php">Volver</a></button>
    <img src="../boletines/img/logoc.jpg" class="img" >
    </header>

    <center>
        <div class="cont">
<?php
             $DNI=$_GET['valor'];
                $consulta="select * from alumno where DNI='$DNI'";
                $conn=Conexion('prueba');
                $result = mysqli_query($conn, $consulta);
                $Cant_Filas = mysqli_num_rows ($result);//Calcula la cant de filas que tienen la misma consulta.

if ($Cant_Filas >0) {//evalua que la cant de filas sea mayor a 0, osea 1.
    // Mostrar los datos de cada fila
    while($row = mysqli_fetch_array($result)) {//recorre toda la tabla 
          $DNI1=$img=$row["DNI"];//captura el dato de cada columna y lo carga en una variable de sesion. Crea la variable de sesion.
		  $nombre=$row["nombre"];
		  $apellido=$row["apellido"];
		 $nota1=$row["nota1"];
         $nota2=$row["nota2"];
         $nota3=$row["nota3"];
	
    }
    }
    ?>
       <form action='metaingresar.php' method='post'>
        <p class='box'>Nombre del Alumno:
        <input type='text' name='nom' class='boxx' value="<?php echo $nombre?>"/></p> 
        <p class='box'> Apellido del Alumno:
        <input type='text' name='ape' class='boxx' value='<?php echo $apellido?>'/></p>
        <p class='box'>DNI del Alumno:
        <input type='text' name='DNI' class='boxx' value='<?php echo $DNI1?>'/></p>  
        <p class='box'> Notas del Alumno:
        <input type='text' name='nota1' class='boxx' value="<?php echo $nota1?>"/> </p>
         <input type='text' name='nota2' class='boxx' value="<?php echo $nota2?>"/> </p>
          <input type='text' name='nota3' class='boxx' value="<?php echo $nota3?>"/> </p>
        <input type='submit' value='Actualizar' class='act'/>
      </form>
        </div>
    </center>

  </body>
