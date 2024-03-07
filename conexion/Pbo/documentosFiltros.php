<?php
include '../conexion/conexion.php';

$periodo = $_GET["valor"];

$sql = "SELECT * FROM `ke_pbo`
WHERE KEP_PERIOD = '$periodo'";
$result0 = mysqli_query ($conex, $sql);
$num = mysqli_num_rows($result0);
print_r(mysqli_error($conex));

$sql = "SELECT DISTINCT(KEP_PERIOD) FROM `ke_pbo` 
ORDER BY KEP_PERIOD DESC";
$result1 = mysqli_query ($conex, $sql);
print_r(mysqli_error($conex));

?>