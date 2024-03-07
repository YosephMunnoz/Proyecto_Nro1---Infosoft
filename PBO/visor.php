<?php
include '../conexion/conexion.php';
$id = $_GET["id"];

$sql = "SELECT * FROM `ke_files` where KEF_ID = '$id'";
$visor = mysqli_query ($conex, $sql);
print_r(mysqli_error($conex));

foreach($visor as $v)
{
    $patch = $v['KEF_PATCH'];
    $separar = explode(".", $patch);
    $ver = strtolower(end($separar));
    if ($ver == 'pdf')
    {
        header('content-type: application/pdf');
        readfile($v['KEF_PATCH']);
    }
    else if ($ver == 'xlsx')
    {
        header('content-type: application/xlsx');
        readfile($v['KEF_PATCH']);
    }
    else if ($ver == 'xls' )
    {
        header('content-type: application/xls');
        readfile($v['KEF_PATCH']);
    }
    else
    {
        echo
        "<script> 
            alert('El archivo no se puede abrir);
            location.assign('../../Documentos/index.php?area=$area&value=$value');
        </script>";
}
}
?>