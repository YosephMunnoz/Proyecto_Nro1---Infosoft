<?php
include '../conexion/conexion.php';
$id = $_GET["id"];

$sql = "SELECT * FROM `ke_pbo` where KEP_ID = '$id'";
$visor = mysqli_query ($conex, $sql);
print_r(mysqli_error($conex));

foreach($visor as $v)
{
    $patch = $v['KEP_PATCH'];
    $separar = explode(".", $patch);
    $ver = strtolower(end($separar));
    if ($ver == 'pdf')
    {
        header('content-type: application/pdf');
        readfile($v['KEP_PATCH']);
    }
    else if ($ver == 'xlsx')
    {
        header('content-type: application/xlsx');
        readfile($v['KEP_PATCH']);
    }
    else if ($ver == 'xls' )
    {
        header('content-type: application/xls');
        readfile($v['KEP_PATCH']);
    }
    else
    {
        echo
        "<script> 
            alert('El archivo no se puede abrir);
            location.assign('../../PBO/index.php');
        </script>";
}
}
?>