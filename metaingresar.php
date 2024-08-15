<?php
include('db.php'); 
session_start();
echo $nom= $_POST['nom'];
echo $ape= $_POST['ape'];
echo $DNI= $_POST['DNI'];
echo $nota1= $_POST['nota1'];
echo $nota2= $_POST['nota2'];
echo $nota3= $_POST['nota3'];

/*
$consulta = "UPDATE alumno SET nota1 = '$nota1', nota2 = '$nota2', nota3 = '$nota3' WHERE DNI = '$DNI'";
$conn=Conexion('prueba');
$result = mysqli_query($conn, $consulta);

if ($result) {
    echo "Datos actualizados correctamente.";
    //header("Location: principal.php"); 
} else {
    echo "Error al actualizar los datos.";
}
?>*/

