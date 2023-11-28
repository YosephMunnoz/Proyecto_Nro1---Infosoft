<?php
include '../conexion/conexion.php';

$link = $_GET["area"];

$sql = "SELECT * FROM `ke_files` where KEF_AREA = '$link'";
$result0 = mysqli_query ($conex, $sql);
print_r(mysqli_error($conex));

$sql = "SELECT * FROM `ke_areas` where KEA_AREA = '$link'";
$result1 = mysqli_query ($conex, $sql);
print_r(mysqli_error($conex));
?>