<?php
include '../conexion/conexion.php';

$serv = $_GET["servicio"];
if (isset($_GET['value'])) {
	switch ($_GET['value']) {
		case '1':
		$link = $_GET["canal"];
		//Catalogo de Servicio - Canal o Aplicativo
		$sql = "CALL SP_CATALOGO_CHANNEL (\"$serv\",\"$link\")";
		$result = mysqli_query ($conex, $sql);
		print_r(mysqli_error($conex));
	break;
	case '2':
		//Catalogo de Servicio - Servicio
		$sql = "CALL SP_CATALOGO_SERVICE(\"$serv\")";
		$result = mysqli_query($conex, $sql);
		print_r(mysqli_error($conex));
	break;
	case '3':
		//Catalogo de Servicio General
		$sql = "CALL SP_CATALOGO()";
		$result = mysqli_query($conex, $sql);
		print_r(mysqli_error($conex));
	break;
	}
	mysqli_close($conex);
}
?>

