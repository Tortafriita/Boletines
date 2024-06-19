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