<?php
    include 'conexion.php';
    session_start();
    $creationUser = "$_SESSION[user]";
    $updateUser = "$_SESSION[user]";
        if(isset($_SESSION['user']))
        {
            if(isset($_POST['regis']))
            {
                switch ($_POST['regis'])
                {
                    case '1':
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
                    case '2':
                        if(isset($_POST['charge']) && $_POST['charge']!='')
                    {
                        $charge = $_POST['charge'];

                        $sql = "SELECT * FROM KE_CHARGE  WHERE KEC_CHARGE = '$charge'";
                        $valida = mysqli_query($conex, $sql);
                        $num = mysqli_num_rows($valida);
                        if($num == 0 )
                        {
                            $insert = "INSERT INTO KE_CHARGE(KEC_CHARGE,KEC_ACTIVE, KEC_CREATION_DATE, KEC_CREATION_USER, KEC_UPDATE_DATE, KEC_UPDATE_USER) VALUES('$charge', 1, NOW(), '$creationUser', NOW(), '$updateUser')";
                            $result = mysqli_query($conex, $insert);
                            
                            if($result)
                            {
                                echo
                                "<script> 
                                    alert('El Cargo Fue Creado exitosamente');
                                    location.assign('../settings_users/index.php?option=2');
                                </script>";
                            }
                            else
                            {
                                echo "<script> 
                                        alert('ha ocurrido un error, vuelva a intentar');
                                        location.assign('../settings_users/index.php?option=2');
                                    </script>";
                            }      
                        } 
                        else 
                        {
                            echo    
                                "<script> 
                                    alert('El Cargo ya existe');
                                    location.assign('../settings_users/index.php?option=2');
                                </script>";
                        } 
                    mysqli_close($conex);
                    }
                    else
                    {
                        echo ("Por favor intente de nuevo, ocurrio un error");
                    }
                    break;
                    case '3':
                        if(isset($_POST['charge']) && $_POST['charge']!='' && isset($_POST['id']) &&$_POST['id']!='')
                        {
                            $charge = $_POST['charge'];
                            $id = $_POST['id'];

                            $sql = "SELECT * FROM KE_CHARGE  WHERE KEC_ID = '$id' AND KEC_ACTIVE = 1";
                            $valida = mysqli_query($conex, $sql);
                            $num = mysqli_num_rows($valida);
                            if($num == 1 )
                            {
                                $update = "UPDATE KE_CHARGE  SET KEC_CHARGE = '$charge', KEC_UPDATE_DATE = NOW() ,KEC_CREATION_USER = '$updateUser' WHERE KEC_ID = '$id' AND KEC_ACTIVE = 1 ";
                                $result = mysqli_query($conex, $update);
                                if($result)
                                {
                                    echo
                                    "<script> 
                                        alert('El Cargo Fue Actualizado exitosamente');
                                        location.assign('../settings_users/index.php?option=2');
                                    </script>";
                                }
                                else
                                {
                                    echo "<script> 
                                            alert('ha ocurrido un error, vuelva a intentar');
                                            location.assign('../settings_users/index.php?option=2');
                                        </script>";
                                }      
                            }
                            mysqli_close($conex);
                        }
                        break;
                    case '4':
                        if(isset($_POST['charge']) && $_POST['charge']!='')
                        {
                            $charge = $_POST['charge'];
                            $sql = "SELECT * FROM KE_CHARGE  WHERE KEC_CHARGE = '$charge'";
                            $valida = mysqli_query($conex, $sql);
                            $num = mysqli_num_rows($valida);
                            if($num == 1 )
                            {
                                $update = "UPDATE KE_CHARGE  SET KEC_ACTIVE = 0, KEC_UPDATE_DATE = NOW() ,KEC_CREATION_USER = '$updateUser' WHERE KEC_CHARGE = '$charge' AND KEC_ACTIVE = 1 ";
                                $result = mysqli_query($conex, $update);
                                if($result)
                                {
                                    echo
                                    "<script> 
                                        alert('El Cargo Fue Eliminado exitosamente');
                                        location.assign('../settings_users/index.php?option=2');
                                    </script>";
                                }
                                else
                                {
                                    echo "<script> 
                                            alert('ha ocurrido un error, vuelva a intentar');
                                            location.assign('../settings_users/index.php?option=2');
                                        </script>";
                                }      
                            }
                            mysqli_close($conex);
                        }
                    break;
                    case '5':
                        if(isset($_POST['name']) && $_POST['name']!='' && isset($_POST['lastName']) && $_POST['lastName']!='' && isset($_POST['CI']) && $_POST['CI']!='' && isset($_POST['email']) && $_POST['email']!='')
                        {
                            $id = $_POST['id'];
                            $name = $_POST['name'];
                            $lastName = $_POST['lastName'];
                            $ci = $_POST['CI'];
                            $user = $_POST['user'];
                            $email = $_POST['email'];
                            $charge = $_POST['charge'];
                            $typeUser = $_POST['type'];
                            $status = $_POST['status'];      
                            
                            $sql = "SELECT * FROM KE_USER  WHERE KEU_ID = '$id'";
                            $valida = mysqli_query($conex, $sql);
                            $num = mysqli_num_rows($valida);
                            if($num == 1 )
                            {
                                $update = "UPDATE KE_USER SET KEU_NAME = '$name', KEU_LASTNAME = '$lastName', KEU_DOCUMENT = '$ci', KEU_USER = '$user', KEU_EMAIL = '$email', KEC_ID = '$charge', KETU_ID = '$typeUser', KES_ID = '$status', KEU_UPDATE_DATE = NOW() ,KEU_CREATION_USER = '$updateUser' WHERE KEU_ID = '$id'";
                                $result = mysqli_query($conex, $update);
                                if($result)
                                {
                                    echo
                                    "<script> 
                                        alert('El Usuario Fue Actualizado exitosamente');
                                        location.assign('../settings_users/index.php?option=3');
                                    </script>";
                                }
                                else
                                {
                                    echo "<script> 
                                            alert('ha ocurrido un error, vuelva a intentar');
                                            location.assign('../settings_users/index.php?option=3');
                                        </script>";
                                }      
                            } 
                        mysqli_close($conex);
                        }
                        break;
                    case '6':
                        if(isset($_POST['id']) && $_POST['id']!='' )
                        {
                            $id = $_POST['id'];                                
                            $sql = "SELECT * FROM KE_USER  WHERE KEU_ID = '$id'";
                            $valida = mysqli_query($conex, $sql);
                            $num = mysqli_num_rows($valida);
                            if($num == 1 )
                            {
                                $update = "UPDATE KE_USER SET KES_ID = 3, KEU_UPDATE_DATE = NOW() ,KEU_CREATION_USER = '$updateUser' WHERE KEU_ID = '$id'";
                                $result = mysqli_query($conex, $update);
                                if($result)
                                {
                                    echo
                                    "<script> 
                                        alert('El Usuario Fue eliminado exitosamente');
                                        location.assign('../settings_users/index.php?option=3');
                                    </script>";
                                }
                                else
                                {
                                    echo "<script> 
                                            alert('ha ocurrido un error, vuelva a intentar');
                                            location.assign('../settings_users/index.php?option=3');
                                        </script>";
                                }      
                            } 
                        mysqli_close($conex);
                        }
                    break;
                    case '7':
                        if(isset($_POST['id']) && $_POST['id']!='')
                        {
                            $id = $_POST['id'];
                            $old = $_POST['passwordOld'];
                            $new = $_POST['newPassword'];
                            $confirm = $_POST['confirmPassword']; 
                            $sql = "SELECT * FROM KE_USER  WHERE KEU_ID = '$id'";
                            $valida = mysqli_query($conex, $sql);
                            $num = mysqli_num_rows($valida);
                            if($num == 1 )
                            {
                                $sql = "SELECT KEU_PASSWORD FROM KE_USER  WHERE KEU_ID = '$id'";
                                $query = mysqli_query($conex, $sql);
                                foreach ($query as $q);
                                if(md5($old) ==  ($q['KEU_PASSWORD']))
                                {
                                    if($new === $confirm)
                                    {
                                        $update = "UPDATE KE_USER SET KEU_PASSWORD = md5('$new'), KEU_UPDATE_DATE = NOW() ,KEU_CREATION_USER = '$updateUser' WHERE KEU_ID = '$id'";
                                        $result = mysqli_query($conex, $update);
                                        if($result)
                                        {
                                            echo
                                            "<script> 
                                                alert('El Contraseña Fue Actualizado exitosamente');
                                                location.assign('../');
                                            </script>";
                                        }
                                        else
                                        {
                                            echo "<script> 
                                                    alert('ha ocurrido un error, vuelva a intentar');
                                                    location.assign('../');
                                                </script>";
                                        } 
                                    }
                                    else
                                    {
                                        echo "<script> 
                                                alert('las contraseñas no coinciden, por favor intente de nuevo');
                                                location.assign('../');
                                            </script>";
                                    }
                                }
                                else
                                {
                                    echo "<script> 
                                            alert('Su contraseña no es valida, por favor intente de nuevo');
                                            location.assign('../');
                                         </script>";
                                }     
                            } 
                        mysqli_close($conex);
                        }
                    break;
                }
            }
        }
