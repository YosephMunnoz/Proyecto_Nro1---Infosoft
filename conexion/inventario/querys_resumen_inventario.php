<?php
include "conex.php";

// Vista Para Servidores Fisicos
$sql = "SELECT * FROM servidores_fisicos where active != 0";
$result = mysqli_query($conex, $sql);

// Vista Para Servidores Virtuales
$sql_1 = "SELECT * FROM servidores_virtuales where active != 0";
$result_1 = mysqli_query($conex, $sql_1);

// Vista Para Servidores Unix
$sql_2 = "SELECT * FROM servidores_unix where active != 0";
$result_2 = mysqli_query($conex, $sql_2);

// Vista Para Servidores Windows
$sql_3 = "SELECT * FROM servidores_windows where active != 0";
$result_3 = mysqli_query($conex, $sql_3);

mysqli_close($conex);
?>