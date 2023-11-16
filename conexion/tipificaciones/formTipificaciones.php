<?php
    include '../conexion.php';
    session_start();
    $creationUser = "$_SESSION[user]";
    $updateUser = "$_SESSION[user]";
    $value = $_POST['value'];
    $area = $_POST['area'];
    $opcion = $_POST['opcion'];
    $id = $_POST['id'];

        if(isset($_SESSION['user']))
        {
            if(isset($_POST['regis']))
            {
                switch ($_POST['regis'])
                {
                    case 'insert':
                        if(isset($_POST['areas']) && isset($_POST['type_caso']) && isset($_POST['resumen']) && isset($_POST['nivel_op1']) && isset($_POST['nivel_op2']) && isset($_POST['nivel_op3']) && isset($_POST['nivel_p1']) && isset($_POST['nivel_p2']) && isset($_POST['nivel_p3']))
                    {
                        $sum = 1;
                        $areas = $_POST['areas'];
                        $caso = $_POST['type_caso'];
                        $resumen = $_POST['resumen'];
                        $op1 = $_POST['nivel_op1'];
                        $op2 = $_POST['nivel_op2'];
                        $op3 = $_POST['nivel_op3'];
                        $p1 = $_POST['nivel_p1'];
                        $p2 = $_POST['nivel_p2'];
                        $p3 = $_POST['nivel_p3'];

                        $query = "SELECT MAX(KET_ORDER)+1 AS KET_ORDER FROM ke_tipificaciones WHERE KET_AREA = '$areas'";
                        $result = mysqli_query($conex, $query);
                        foreach ($result as $r)
                        $order = $r['KET_ORDER'];
      
                        $sql = "SELECT * FROM ke_tipificaciones  
                        WHERE KET_AREA = '$areas' AND 
                        KET_TYPE_CASO = '$caso' AND 
                        KET_RESUMEN = '$resumen' AND 
                        KET_OPERACIONES1 = '$op1' AND
                        KET_OPERACIONES2 = '$op2' AND
                        KET_OPERACIONES3 = '$op3' AND
                        KET_PRODUCTO1 = '$p1' AND
                        KET_PRODUCTO2 =  '$p2' AND
                        KET_PRODUCTO3 = '$p3'";
                        $valida = mysqli_query($conex, $sql);
                        $num = mysqli_num_rows($valida);
                        if($num == 0 )
                        {
                            $insert = "INSERT INTO ke_tipificaciones(KET_ORDER,KET_AREA, KET_TYPE_CASO, KET_RESUMEN, KET_OPERACIONES1, KET_OPERACIONES2, KET_OPERACIONES3, KET_PRODUCTO1, KET_PRODUCTO2, KET_PRODUCTO3, KET_CREATION_DATE, KET_CREATION_USER, KET_UPDATE_DATE, KET_UPDATE_USER) VALUES('$order','$areas', '$caso', '$resumen', '$op1', '$op2', '$op3', '$p1', '$p2','$p3', NOW(), '$creationUser', NOW(), '$updateUser')";
                            $result = mysqli_query($conex, $insert);
                            
                            if($result)
                            {
                                echo
                                "<script> 
                                    alert('La matriz fue Creada exitosamente');
                                    location.assign('../../tipificaciones/index.php?tipificaciones=$opcion&area=$area');
                                </script>";
                            }
                            else
                            {
                                echo "<script> 
                                        alert('ha ocurrido un error, vuelva a intentar');
                                        location.assign('../../tipificaciones/index.php?tipificaciones=$opcion&area=$area');
                                    </script>";
                            }      
                        } 
                        else 
                        {
                            echo    
                                "<sc> 
                                    alert('Esta Matriz ya existe');
                                    location.assign('../../tipificaciones/index.php?tipificaciones=$opcion&area=$area');
                                </sc
                                ript>";
                        } 
                    mysqli_close($conex);
                    }
                    else
                    {
                        echo ("Por favor intente de nuevo, ocurrio un error");
                    }
                    break;
                    case 'edit':
                        if(isset($_POST['id']) && $_POST['id']!='')
                    {
                        $id = $_POST['id'];
                        $caso = $_POST['type_caso'];
                        $resumen = $_POST['resumen'];
                        $op1 = $_POST['nivel_op1'];
                        $op2 = $_POST['nivel_op2'];
                        $op3 = $_POST['nivel_op3'];
                        $p1 = $_POST['nivel_p1'];
                        $p2 = $_POST['nivel_p2'];
                        $p3 = $_POST['nivel_p3'];

                        $sql = "SELECT * FROM ke_tipificaciones WHERE KET_ID  = '$id'";
                        $valida = mysqli_query($conex, $sql);
                        $num = mysqli_num_rows($valida);
                        if($num == 1 )
                        {
                            $update = "UPDATE `ke_tipificaciones` 
                            SET  KET_TYPE_CASO = '$caso'
                                ,KET_RESUMEN = '$resumen'
                                ,KET_OPERACIONES1 = '$op1' 
                                ,KET_OPERACIONES2 = '$op2'
                                ,KET_OPERACIONES3 = '$op3'
                                ,KET_PRODUCTO1 = '$p1'
                                ,KET_PRODUCTO2 = '$p2'
                                ,KET_PRODUCTO3 = '$p3'
                                ,KET_CREATION_DATE = NOW()
                                ,KET_CREATION_USER = '$creationUser'
                                ,KET_UPDATE_DATE = NOW()
                                ,KET_UPDATE_USER = '$updateUser'
                            WHERE KET_ID = '$id'";
                            $result = mysqli_query($conex, $update);
                            
                            if($result)
                            {
                                echo
                                "<script> 
                                    alert('El registro fue actualizado');
                                    location.assign('../../tipificaciones/index.php?tipificaciones=$opcion&area=$area&value=$value');
                                </script>";
                            }
                            else
                            {
                                echo "<script> 
                                        alert('ha ocurrido un error, vuelva a intentar');
                                        location.assign('../tipificaciones/index.php?tipificaciones=$opcion&area=$area&value=$value');
                                    </script>";
                            }      
                        } 
                    mysqli_close($conex);
                    }
                    break;
                    case 'delete':
                        if(isset($_POST['id']) && $_POST['id']!='')
                        {
                            
                            $sql = "SELECT * FROM ke_tipificaciones WHERE KET_ID  = '$id'";
                            $valida = mysqli_query($conex, $sql);
                            $num = mysqli_num_rows($valida);
                            if($num == 1 )
                            {
                                $delete = "DELETE FROM ke_tipificaciones WHERE KET_ID  = '$id' ";
                                $result = mysqli_query($conex, $delete);
                                if($result)
                                {
                                    echo
                                    "<script> 
                                        alert('El Cargo Fue Eliminado exitosamente');
                                        location.assign('../tipificaciones/index.php?tipificaciones=$opcion&area$area=1&value=$value');
                                    </script>";
                                }
                                else
                                {
                                    echo "<script> 
                                            alert('ha ocurrido un error, vuelva a intentar');
                                            location.assign('../tipificaciones/index.php?tipificaciones=$opcion&area$area=1&value=$value');
                                        </script>";
                                }      
                            }
                            mysqli_close($conex);
                        }
                        break;
                }
            }
        }
