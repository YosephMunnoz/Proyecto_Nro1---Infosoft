<?php
    include '../conexion.php';
    session_start();
    $creationUser = "$_SESSION[user]";
    $updateUser = "$_SESSION[user]";
    $servicio = $_POST['servicio'];
        if(isset($_SESSION['user']))
        {
            if(isset($_POST['regis']))
            {
                switch ($_POST['regis'])
                {
                    case 'insert':
                    if(isset($_POST['criticidad']) && isset($_POST['servicioAsociado']) && isset($_POST['canalAplicativo']) && isset($_POST['area']) && isset($_POST['servidor']) && isset($_POST['host']) && isset($_POST['ip']) && isset($_POST['sistemOper']) && isset($_POST['vs_so']) && isset($_POST['bd']) && isset($_POST['criticidad']) && isset($_POST['nameBd']) && isset($_POST['vs_bd']) && isset($_POST['bus']) && isset($_POST['tuxedo']) && isset($_POST['web']) && isset($_POST['f5']) && isset($_POST['ipf5']) && isset($_POST['port']) && isset($_POST['pools']) && isset($_POST['otros']) && isset($_POST['general'])  && isset($_POST['ubicacion'])  && isset($_POST['rack'])  && isset($_POST['rows']) )
                    {
                        $criticidad = $_POST['criticidad'];
                        $servicioAsociado = $_POST['servicioAsociado'];
                        $canalAplicativo = $_POST['canalAplicativo'];
                        $area = $_POST['area'];
                        $servidor = $_POST['servidor'];
                        $host = $_POST['host'];
                        $ip = $_POST['ip'];
                        $sistemOper = $_POST['sistemOper'];
                        $vs_so = $_POST['vs_so'];
                        $bd = $_POST['bd'];   
                        $gestorBd = $_POST['nameBd'];   
                        $vs_bd = $_POST['vs_bd'];   
                        $bus = $_POST['bus'];   
                        $tuxedo = $_POST['tuxedo'];   
                        $web = $_POST['web'];   
                        $f5 = $_POST['f5'];   
                        $ipf5 = $_POST['ipf5'];   
                        $port = $_POST['port'];   
                        $pools = $_POST['pools'];
                        $otros = $_POST['otros']; 
                        $general = $_POST['general']; 
                        $ubicacion = $_POST['ubicacion']; 
                        $rack = $_POST['rack']; 
                        $rows = $_POST['rows'];       
        
                        $sql = "SELECT * FROM ke_catalago_de_servicio  
                        WHERE KENC_CRITICAL_LEVEL  = '$criticidad' AND 
                        KESA_SERVICE = '$servicioAsociado' AND 
                        KECA_CHANNEL = '$canalAplicativo' AND 
                        KEA_AREA = '$area' AND 
                        KESRV_SERVER = '$servidor' AND 
                        KEIP_IP = '$ip' AND 
                        KEHN_HOSTNAME = '$host' AND 
                        KESO_OPERATING_SYSTEM  = '$sistemOper' AND 
                        KEVSOS_VERSION = '$vs_so' AND 
                        KEIDB_INSTANCE = '$bd' AND 
                        KEDBM_GESTOR = '$gestorBd' AND 
                        KEDBMVS_VERSION= '$vs_bd' AND 
                        KEB_BUS = '$bus' AND 
                        KECT_CAPA_TUXEDO = '$tuxedo' AND 
                        KEW_WEBLOGIC = '$web' AND 
                        KEFC_F5_COMUNICACIONES   = '$f5' AND 
                        KEIPF_IP_F5  = '$ipf5' AND 
                        KECS_PORTF5 = '$port' AND 
                        KEPS_POOLS_VS = '$pools' AND 
                        KEOSA_OTHER_ASSOCIATED_SERVICES   = '$otros' AND 
                        KEU_LOCATION = '$ubicacion' AND 
                        KER_RACK  = '$rack' AND
                        KECS_ROWS = '$rows' AND 
                        KEOBG_GENERAL_REMARKS = '$general'";
                        $valida = mysqli_query($conex, $sql);
                        $num = mysqli_num_rows($valida);
                        if($num == 0 )
                        {
                            $insert = "INSERT INTO ke_catalago_de_servicio
                            (
                                KENC_CRITICAL_LEVEL
                                ,KESA_SERVICE
                                ,KECA_CHANNEL
                                ,KEA_AREA
                                ,KESRV_SERVER
                                ,KEIP_IP
                                ,KEHN_HOSTNAME
                                ,KESO_OPERATING_SYSTEM
                                ,KEVSOS_VERSION
                                ,KEIDB_INSTANCE
                                ,KEDBM_GESTOR
                                ,KEDBMVS_VERSION
                                ,KEB_BUS
                                ,KECT_CAPA_TUXEDO
                                ,KEW_WEBLOGIC
                                ,KEFC_F5_COMUNICACIONES
                                ,KEIPF_IP_F5
                                ,KECS_PORTF5
                                ,KEPS_POOLS_VS
                                ,KEOSA_OTHER_ASSOCIATED_SERVICES
                                ,KEU_LOCATION
                                ,KER_RACK
                                ,KECS_ROWS
                                ,KEOBG_GENERAL_REMARKS
                                ,KECS_ACTIVE
                                ,KECS_CREATION_DATE
                                ,KECS_CREATION_USER
                                ,KECS_UPDATE_DATE
                                ,KECS_UPDATE_USER
                            ) VALUES
                            (
                                '$criticidad'
                                ,'$servicioAsociado'
                                ,'$canalAplicativo'
                                ,'$area'
                                ,'$servidor'
                                ,'$host'
                                ,'$ip'
                                ,'$sistemOper'
                                ,'$vs_so'
                                ,'$bd'
                                ,'$gestorBd'
                                ,'$vs_bd'
                                ,'$bus'
                                ,'$tuxedo'  
                                ,'$web'
                                ,'$f5'
                                ,'$ipf5'
                                ,'$port'
                                ,'$pools'
                                ,'$otros'
                                ,'$ubicacion'
                                ,'$rack'
                                ,'$rows'
                                ,'$general'
                                ,1
                                , NOW()
                                , '$creationUser'
                                , NOW()
                                , '$updateUser'
                            )";
                            $result = mysqli_query($conex, $insert);
                            
                            if($result)
                            {
                                echo
                                "<script> 
                                    alert('El Registro Fue Creado exitosamente');
                                     location.assign('../../CatalogoDeServicio/index.php?servicio=$servicio');
                                </script>";
                            }
                            else
                            {
                                echo "<script> 
                                        alert('ha ocurrido un error, vuelva a intentar');
                                         location.assign('../../CatalogoDeServicio/index.php?servicio=$servicio');
                                    </script>";
                            }      
                        } 
                        else 
                        {
                            echo    
                                "<script> 
                                    alert('El Registro ya existe');
                                     location.assign('../../CatalogoDeServicio/index.php?servicio=$servicio');
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
                        $canal = $_POST['canal'];
                        $id = $_POST['id'];
                        $criticidad = $_POST['criticidad'];
                        $area = $_POST['area'];
                        $server = $_POST['servidor'];
                        $ip = $_POST['ip'];
                        $host = $_POST['host'];
                        $sistemOpe = $_POST['sistemOper'];
                        $vsSo = $_POST['vs_so'];
                        $bd = $_POST['bd'];
                        $nameBd = $_POST['nameBd'];
                        $vsBd = $_POST['vs_bd'];
                        $bus = $_POST['bus'];
                        $tuxedo = $_POST['tuxedo'];
                        $logic = $_POST['weblogic'];
                        $f5 = $_POST['f5'];
                        $ipf = $_POST['ipf5'];
                        $portf = $_POST['portf5'];
                        $pools = $_POST['pools'];
                        $otros = $_POST['otros'];
                        $ubicacion = $_POST['ubicacion'];
                        $rack = $_POST['rack'];
                        $fila = $_POST['fila'];
                        $general = $_POST['general'];

                        $sql = "SELECT * FROM ke_catalago_de_servicio WHERE KECS_ID  = '$id'";
                        $valida = mysqli_query($conex, $sql);
                        $num = mysqli_num_rows($valida);
                        if($num == 1 )
                        {
                            $update = "UPDATE `ke_catalago_de_servicio` 
                            SET  KENC_CRITICAL_LEVEL = '$criticidad'
                                ,KEA_AREA = '$area'
                                ,KESRV_SERVER = '$server' 
                                ,KEIP_IP = '$ip'
                                ,KEHN_HOSTNAME = '$host'
                                ,KESO_OPERATING_SYSTEM = '$sistemOpe'
                                ,KEVSOS_VERSION = '$vsSo'
                                ,KEIDB_INSTANCE = '$bd'
                                ,KEDBM_GESTOR = '$nameBd'
                                ,KEDBMVS_VERSION = '$vsBd'
                                ,KEB_BUS = '$bus'
                                ,KECT_CAPA_TUXEDO = '$tuxedo'
                                ,KEW_WEBLOGIC = '$logic'
                                ,KEFC_F5_COMUNICACIONES = '$f5'
                                ,KEIPF_IP_F5  = '$ipf'
                                ,KECS_PORTF5 = '$portf'
                                ,KEPS_POOLS_VS  = '$pools'
                                ,KEOSA_OTHER_ASSOCIATED_SERVICES  = '$otros'
                                ,KEU_LOCATION  = '$ubicacion'
                                ,KER_RACK  = '$rack'
                                ,KECS_ROWS = '$fila'
                                ,KEOBG_GENERAL_REMARKS  = '$general'
                                ,KECS_CREATION_DATE = NOW()
                                ,KECS_CREATION_USER = '$creationUser'
                                ,KECS_UPDATE_DATE = NOW()
                                ,KECS_UPDATE_USER = '$updateUser'
                            WHERE KECS_ID  = '$id'";
                            $result = mysqli_query($conex, $update);
                            
                            if($result)
                            {
                                echo
                                "<script> 
                                    alert('El registro fue actualizado');
                                    location.assign('../../CatalogoDeServicio/index.php?servicio=$servicio&value=1&canal=$canal');
                                </script>";
                            }
                            else
                            {
                                echo "<script> 
                                        alert('ha ocurrido un error, vuelva a intentar');
                                        location.assign('../../CatalogoDeServicio/index.php?servicio=$servicio&value=1&canal=$canal');
                                    </script>";
                            }      
                        } 
                    mysqli_close($conex);
                    }
                    break;
                    case 'delete':
                        if(isset($_POST['id']) && $_POST['id']!='')
                        {
                            $canal = $_POST['canal'];
                            
                            $sql = "SELECT * FROM ke_catalago_de_servicio WHERE KECS_ID  = '$id'";
                            $valida = mysqli_query($conex, $sql);
                            $num = mysqli_num_rows($valida);
                            if($num == 1 )
                            {
                                $delete = "DELETE FROM ke_catalago_de_servicio WHERE KECS_ID  = '$id'";
                                $result = mysqli_query($conex, $delete);
                                if($result)
                                {
                                    echo
                                    "<script> 
                                        alert('El Cargo Fue Eliminado exitosamente');
                                         location.assign('../../CatalogoDeServicio/index.php?servicio=$servicio&value=1&canal=$canal');
                                    </script>";
                                }
                                else
                                {
                                    echo "<script> 
                                            alert('ha ocurrido un error, vuelva a intentar');
                                             location.assign('../../CatalogoDeServicio/index.php?servicio=$servicio&value=1&canal=$canal');
                                        </script>";
                                }      
                            }
                            mysqli_close($conex);
                        }
                        break;
                }
            }
        }
