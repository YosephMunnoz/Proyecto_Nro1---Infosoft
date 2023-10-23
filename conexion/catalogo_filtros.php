<?php
include "conex.php";
$serv = $_GET["servicio"];
$sql = "SELECT id, nivel_criticidad FROM cs_nivel_de_criticidad";
	$var = mysqli_query($conex, $sql);
	print_r(mysqli_error($conex));

$sql = "SELECT id, servicio_asociado FROM servicio_asociado";
$var2 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT id, canal_aplicativo FROM canal_aplicativo";
$var3 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT id, area FROM areas";
$var4 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT id, sistema_operativo FROM sistemas_operativos";
$var5 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT id, vs_sistema_operativo FROM vs_sistemas_operativos";
$var6 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT id, nombres FROM nombres_de_bases_de_datos";
$var7 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT id, dbms FROM manejador_de_bases_de_datos";
$var8 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT id, vs_bd FROM vs_de_base_de_datos";
$var9 = mysqli_query($conex, $sql);
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

