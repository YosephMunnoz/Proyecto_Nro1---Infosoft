<?php
include '../conexion/conexion.php';

$link = $_GET["area"];

$sql = "SELECT * FROM `ke_tipificaciones` where KET_AREA = '$link'";
$result = mysqli_query ($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT KETP_CASE_TYPE FROM `ke_tipificaciones_tipo_caso`";
$result1 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT KETPR_DESCRIPTION FROM `ke_tipificaciones_resumen`";
$result2 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT KETPO1_DESCRIPTION  FROM `ke_tipificaciones_operaciones_1`";
$result3 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT KETPO2_DESCRIPTION  FROM `ke_tipificaciones_operaciones_2`";
$result4 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT KETPO3_DESCRIPTION  FROM `ke_tipificaciones_operaciones_3`";
$result5 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT KETPP1_DESCRIPTION  FROM `ke_tipificaciones_productos_1`";
$result6 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT KETPP2_DESCRIPTION  FROM `ke_tipificaciones_productos_2`";
$result7 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT KETPP3_DESCRIPTION  FROM `ke_tipificaciones_productos_3`";
$result8 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT KEA_AREA  FROM `ke_areas`";
$result9 = mysqli_query($conex, $sql);
print_r(mysqli_error($conex));


		
mysqli_close($conex);

?>
