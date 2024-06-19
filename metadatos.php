<?php
session_start();
include 'db.php';
 $user=$_POST['user']; 
 $pass=$_POST['pass']; 
$consultaUnaTabla= "SELECT * FROM USUARIO WHERE Usuario ='$user' AND Contrasenia = '$pass' ";

$Conect= Conexion ('boletines');//llama la función conexión y pasa los parametros a la BD 
$Result= Ejecutar_Consulta($Conect,$consultaUnaTabla);//ejecuta la función del db
echo $Cant_Filas = mysqli_num_rows ($Result);//Calcula la cant de filas que tienen la misma consulta.

if ($Cant_Filas >0) {
    while($row = mysqli_fetch_array($Result)) { 
		  $_SESSION['user']=$row["usuario"];
		  $_SESSION["con"] =$row["contrasenia"];
		 $_SESSION["per"] =$row["permiso"];
    }
header('location: Principal.php');
	
} else {?>
    <script>
        alert('usuario o contraseña incorrecta');
    </script>
<?php
     header('location: login.php');
}
?>
</div>
</body>