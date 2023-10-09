<?php
    session_start();
    include('conexion.php');

    //Se Valida que lleguen los datos del Post
   if(isset($_POST['enviar']))
   {
       if (isset($_POST['email']) && $_POST['email']!='' && isset($_POST['password']) && $_POST['password']!='')
       {    #Llegaron los datos
            $sql = "SELECT * FROM KE_USER WHERE KEU_EMAIL = '$_POST[email]'";
            $result = mysqli_query($conex,$sql);
            $num = mysqli_num_rows($result);
            if($num == 0)
            {
            echo    "<script>
                        alert('El Usuario no existe, por favor intente de nuevo!');
                        location.assign('../index.php');
                    </script>";
            }
            else
            {
                # Se encontro el registro
                $row = mysqli_fetch_array($result); #  Descargo en la matriz de $ fila la 1ra fila
				if ($row['KEU_PASSWORD']!= md5($_POST['password']))  # Las contraseñas no coinciden
                {
                echo    "<script> 
                            alert('Contraseña Incorrecta! por favor intente de nuevo');
                            location.assign('../index.php');
                        </script>";
                } 
                else
                {
                    # Autenticación (creamos variables de sesión con los datos)
                    $_SESSION['userId'] = $row['KEU_ID'];
                    $_SESSION['CI'] = $row['KEU_DOCUMENT'];
                    $_SESSION['name'] = $row['KEU_NAME'];
                    $_SESSION['lastName'] = $row['KEU_LASTNAME'];
                    $_SESSION['user'] = $row['KEU_USER'];
                    $_SESSION['email'] = $row['KEU_EMAIL'];
                    $_SESSION['typeId'] = $row['KETU_ID'];
                echo    "<script> 
                            alert('Bienvenido Ingreso Correctamente!');
                            location.assign('../home/index.php');
                        </script>";
                }
            } 
        } 
        else  
        { 
        echo    "<script>
                    alert('Complete todos los Datos!');
                    location.assign('../index.php');
                </script>";
        }
    }