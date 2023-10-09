<?php
include "conex.php";
$serv = $_GET["servicio"];
$sql = "SELECT id, nivel_criticidad FROM cs_nivel_de_criticidad";
	$var = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));
if (isset($_GET['value'])) {
	switch ($_GET['value']) {
		case '1':
		$link = $_GET["canal"];
		//Catalogo de Servicio - Canal o Aplicativo
		$sql = "CALL canal(\"$serv\",\"$link\")";
		$result = mysqli_query($conex, $sql);
		print_r(mysqli_error($conex));
	break;
	case '2':
		//Catalogo de Servicio - Servicio
		$sql = "CALL servicios(\"$serv\")";
		$result = mysqli_query($conex, $sql);
		print_r(mysqli_error($conex));
	break;
	case '3':
		//Catalogo de Servicio General
		$sql = "CALL catalogo()";
		$result = mysqli_query($conex, $sql);
		print_r(mysqli_error($conex));
	break;
	}
	mysqli_close($conex);
}
?>

