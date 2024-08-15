<?php 
error_reporting(0);
function Conexion ($Db){
	$Conect=mysqli_connect("localhost","root","",$Db) //Realiza una consulta en donde se almacena los archivos
	or die("Error de conexion"); //En caso de que exista un error se mostrara este cartel
	return $Conect; //Vuelve al inicio
}

function ConexionyEjecutarConsulta ($Con,$consulta){ 
	$link=mysqli_connect("localhost","root","",$Con) //Realiza una consulta en donde se almacena los archivos
	or die("Error de conexion"); //En caso de que exista un error se mostrara este cartel
		$R=mysqli_query($link,$Con);
	return $R;//devuelve una variable con una conexión completa al lugar donde se llamo la función.
}

function Ejecutar_Consulta($Db,$Con){
	$Result=mysqli_query($Db,$Con);
	return $Result;
}

function tabla($sql){
	$enlace=Conexion('prueba');
$resultado=mysqli_query($enlace,$sql);

 echo "<div class='cajatabla'>
 <table class='responsive-table'>
   <thead>
   <tr>
      <td>DNI</td>
      <td>Nombre</td>
      <td>Apellido</td>
      <td>Curso</td>
      <td>Cuatri 1</td>
      <td>Cuatri 2</td>
      <td>Cuatri 3</td>
      <td>Acciones</td>
   </tr>
   </thead>
   <tbody>"; 
while ($fila=mysqli_fetch_assoc($resultado)){ 
$DNI=$fila['DNI']; 
$nombre=$fila['nombre'];
$apellido=$fila['apellido'];
$curso=$fila['curso'];
$nota1=$fila['nota1'];
$nota2=$fila['nota2'];
$nota3=$fila['nota3'];

echo "<tr class='col'>
      <td>$DNI</td>
      <td>$nombre</td>
      <td>$apellido</td>
      <td>$curso</td>
      <td>$nota1</td>
      <td>$nota2</td>
      <td>$nota3</td>
      <td class='cont'>
       <a href='ingresar.php?valor=$DNI'><p>📝</p></a>
      </td>
   </tr>"; 
}
echo "</tbody></table></div>";
}