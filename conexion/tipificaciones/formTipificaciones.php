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
                    if(isset($_POST['name']) && $_POST['name']!='' && isset($_POST['lastName']) && $_POST['lastName']!='' && isset($_POST['CI']) && $_POST['CI']!='' && isset($_POST['email']) && $_POST['email']!='' && isset($_POST['password']) && $_POST['password']!='')
                    {
                        $name = $_POST['name'];
                        $lastName = $_POST['lastName'];
                        $ci = $_POST['CI'];
                        $user = $_POST['user'];
                        $email = $_POST['email'];
                        $password = $_POST['password'];
                        $charge = $_POST['charge'];
                        $typeUser = $_POST['typeUser'];
                        $status = $_POST['status'];      
        
                        $sql = "SELECT * FROM KE_USER  WHERE KEU_USER = '$user' AND KEU_EMAIL = '$email' AND KEU_PASSWORD = MD5('$password')";
                        $valida = mysqli_query($conex, $sql);
                        $num = mysqli_num_rows($valida);
                        if($num == 0 )
                        {
                            $insert = "INSERT INTO KE_USER(KEU_NAME, KEU_LASTNAME, KEU_DOCUMENT, KEU_USER, KEU_EMAIL, KEU_PASSWORD, KEC_ID, KETU_ID, KES_ID, KEU_CREATION_DATE, KEU_CREATION_USER, KEU_UPDATE_DATE, KEU_UPDATE_USER) VALUES('$name', '$lastName', '$ci', '$user', '$email', md5('$password'), '$charge', '$typeUser','$status', NOW(), '$creationUser', NOW(), '$updateUser')";
                            $result = mysqli_query($conex, $insert);
                            
                            if($result)
                            {
                                echo
                                "<script> 
                                    alert('El Usuario Fue Creado exitosamente');
                                    location.assign('../home/index.php');
                                </script>";
                            }
                            else
                            {
                                echo "<script> 
                                        alert('ha ocurrido un error, vuelva a intentar');
                                        location.assign('../home/index.php');
                                    </script>";
                            }      
                        } 
                        else 
                        {
                            echo    
                                "<script> 
                                    alert('El Usuario ya existe');
                                    location.assign('../home/index.php');
                                </script>";
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
