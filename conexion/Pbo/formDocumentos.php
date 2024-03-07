<?php
include '../conexion.php';
session_start();
$creationUser = "$_SESSION[user]";
$updateUser = "$_SESSION[user]";

$id = $_POST['id'];

if (isset($_SESSION['user'])) {
    if (isset($_POST['regis'])) {
        switch ($_POST['regis']) {
            case 'insert':
                if (isset($_FILES['file']['name']) && isset($_POST['name']) && $_POST['name'] != "") 
                {
                    $name = $_POST['name'];
                    $description = $_POST['descripcion'];
                    $periodo = $_POST['periodo'];
                    $dir = "C:/laragon/www/Infosoft3/pbo/files/";
                    $size = 500000; // kb
                    $permitidos = array('pdf'); //'xlsx', 'xls'
                    $archivo = $_FILES['file']['name'];
                    $patch = $dir . $archivo;
                    $arregloArchivo = explode(".", $_FILES['file']['name']); //documento.pdf
                    $extension = strtolower(end($arregloArchivo)); //.doc .pdf .jpg
                    $query = "SELECT * FROM ke_pbo WHERE KEP_FILES = '$archivo' and KEP_NAME = '$name' ";
                    $valida = mysqli_query($conex, $query);
                    $num = mysqli_num_rows($valida);
                    if($num == 0 )
                    {
                        if(!file_exists($patch))
                        {
                            if (in_array($extension, $permitidos))
                            {
                                if ($_FILES['file']['size'] < ($size * 1024))
                                {
                                    if (!file_exists($dir)) 
                                    {
                                        mkdir($dir, 0777);
                                    }
                                    if (move_uploaded_file($_FILES['file']['tmp_name'], $patch)) 
                                    {
                                        $validate = true;

                                        $insert = "INSERT INTO Ke_pbo(KEP_NAME, KEP_DESCRIPTION, KEP_PATCH,KEP_FILES,KEP_PERIOD, KEP_CREATION_DATE, KEP_CREATION_USER, KEP_UPDATE_DATE, KEP_UPDATE_USER) VALUES('$name', '$description','$patch','$archivo','$periodo', NOW(), '$creationUser', NOW(), '$updateUser')";
                                        $result = mysqli_query($conex, $insert);
                                        if($result && $validate == true)
                                        {
                                            echo
                                            "<script> 
                                                alert('El Archivo se cargó correctamente');
                                                location.assign('../../PBO/index.php?valor=');
                                            </script>";
                                        }                                    
                                    } 
                                    else
                                    {
                                        echo 
                                        "<script> 
                                            alert('ha ocurrido un error, vuelva a intentar');
                                            location.assign('../../PBO/index.php?valor=');
                                        </script>";
                                    }
                                }
                                else
                                {
                                    echo 
                                    "<script> 
                                        alert('El Archivo excede el maximo permitido (64 mb)');
                                        location.assign('../../PBO/index.php?valor=');
                                    </script>";
                                }
                            }
                            else 
                            {
                            echo 
                            "<script> 
                                alert('Formato de Archivo no permitido');
                                location.assign('../../PBO/index.php?valor=');
                            </script>";
                            }
                        }
                        else
                        {
                            echo 
                            "<script> 
                                alert('El Nombre de este Archivo ya existe');
                                location.assign('../../PBO/index.php?valor=');
                            </script>";
                        }
                    }
                    else
                    {
                        echo 
                        "<script> 
                            alert('El Nombre de este Archivo ya existe');
                            location.assign('../../PBO/index.php?valor=');
                        </script>";
                    }    
                     mysqli_close($conex);
                }                             
                break;
            case 'delete':
                if (isset($_POST['id']) && $_POST['id'] != '') 
                {                    
                    $sql = "SELECT * FROM ke_pbo WHERE KEP_ID  = '$id'";
                    $valida = mysqli_query($conex, $sql);
                    $num = mysqli_num_rows($valida);
                    if ($num == 1) {
                        $ruta = $_POST['ruta'];
                        unlink($ruta);
                        $delete = "DELETE FROM ke_pbo WHERE KEP_ID  = '$id' ";
                        $result = mysqli_query($conex, $delete);
                        if ($result) 
                        {
                            echo
                            "<script> 
                                        alert('El Archvio Fue Eliminado exitosamente');
                                        location.assign('../../PBO/index.php?valor=');
                                    </script>";
                        } else {
                            echo "<script> 
                                            alert('ha ocurrido un error, vuelva a intentar');
                                            location.assign('../../PBO/index.php?valor=');
                                        </script>";
                        }
                    }
                    mysqli_close($conex);
                }
                break;
        }
    }
}
