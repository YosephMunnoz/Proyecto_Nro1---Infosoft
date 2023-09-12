<?php
include "conex.php";
$serv = $_GET["nombre"];
if (isset($_GET['value'])) {
    switch ($_GET['value']) {
        case '1':
		//Inventario Fisico
        $equipo = $_GET["tipo"];
        $tipo = $_GET["servidor"];
        $link = $_GET["entorno"];
		$sql = "CALL servidoresFisicos(\"$tipo\",\"$link\",\"$equipo\")";
		$result = mysqli_query($conex, $sql);
		print_r(mysqli_error($conex));
	break;
	case '2':
		//Inventario Virtual
        $equipo = $_GET["tipo"];
        $tipo = $_GET["servidor"];
        $link = $_GET["entorno"];
		$sql = "CALL servidoresVirtuales(\"$tipo\",\"$link\",\"$equipo\")";
		$result = mysqli_query($conex, $sql);
		print_r(mysqli_error($conex));
	break;
	case '3':
		//Inventario Unix o Windows
        $equipo = $_GET["tipo"];
        $tipo = $_GET["servidor"];
        $link = $_GET["entorno"];
		$sql = "CALL serverXsistemOpe(\"$tipo\",\"$equipo\",\"$link\")";
		$result = mysqli_query($conex, $sql);
		print_r(mysqli_error($conex));
		break;
	case '4':
		$link = $_GET["entorno"];
		//Inventario Completo CCO
		$sql = "CALL inventario_cco(\"$link\")";
		$result = mysqli_query($conex, $sql);
		print_r(mysqli_error($conex));
	}
	mysqli_close($conex);
}
?>

