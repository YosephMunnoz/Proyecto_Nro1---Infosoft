<?php
include "conex.php";
// Total
//  $sql ="SELECT COUNT(servidor_fisico) 
//         FROM inventario_cco
//         WHERE servidor_virtual = 'n/a' AND tipo = 'servidor'";
// $result = mysqli_query($conex, $sql);


// Vista Para Servidores Fisicos
$sql = "SELECT * FROM servidores_fisicos";
$result = mysqli_query($conex, $sql);

// Vista Para Servidores Virtuales
$sql_1 = "SELECT * FROM `servidores_virtuales`";
$result_1 = mysqli_query($conex, $sql_1);

// Vista Para Servidores Unix
$sql_2 = "SELECT * FROM `servidores_unix`";
$result_2 = mysqli_query($conex, $sql_2);

// Vista Para Servidores Windows
$sql_3 = "SELECT * FROM `servidores_windows`";
$result_3 = mysqli_query($conex, $sql_3);


?>