<?php
    include '../conexion.php';
    include 'conex.php';
    session_start();
    $creationUser = "$_SESSION[user]";
    $updateUser = "$_SESSION[user]";
    $inventario = $_POST['inventario'];
    $nombre = $_POST['nombre'];
    $servidor = $_POST['servidor'];
    $value = $_POST['value'];
    $entorno = $_POST['entorno'];
    $tipo =$_POST['tipo'];
    $id = $_POST['id'];
        if(isset($_SESSION['user']))
        {
            if(isset($_POST['regis']))
            {
                switch ($_POST['regis'])
                {
                    case 'insert':
                    if(isset($_POST['id']) && $_POST['id']!='')
                    {
                        $criticidad = $_POST['nivel_criticidad'];
                        $servicio = $_POST['servicio'];
                        $canales = $_POST['canales'];
                        $aplicativo = $_POST['aplicativo'];
                        $umas = $_POST['umas'];
                        $cluster_hypervisor = $_POST['cluster_hypervisor'];
                        $servidor_fisico = $_POST['servidor_fisico'];
                        $servidor_virtual = $_POST['servidor_virtual'];
                        $conciliacion_seguridad = $_POST['conciliacion_seguridad'];
                        $estatus_seguridad = $_POST['estatus_seguridad'];
                        $ubicacion = $_POST['ubicacion'];
                        $rack = $_POST['rack'];
                        $fila = $_POST['fila'];
                        $serial = $_POST['serial'];
                        $direcciones_ip = $_POST['direcciones_ip'];
                        $entorno = $_POST['entorno'];
                        $activo_fijo = $_POST['activo_fijo'];
                        $tipo = $_POST['tipo'];
                        $marca = $_POST['marca'];
                        $modelo = $_POST['modelo'];
                        $fin_soporte = $_POST['fin_soporte'];
                        $socket = $_POST['socket'];
                        $cores = $_POST['cores'];
                        $ram_gb = $_POST['ram_gb'];
                        $sistema_operativo = $_POST['sistema_operativo'];
                        $version_sistema_operativo = $_POST['version_sistema_operativo'];
                        $instancia_bd = $_POST['instancia_bd'];
                        $tipo_bd = $_POST['tipo_bd'];
                        $vs_bd = $_POST['vs_bd'];
        
                        $sql = "SELECT * FROM inventario_cco WHERE servicio = '$servicio' AND canales =  '$canales' AND aplicativo = '$aplicativo' AND umas = '$umas'
                        AND cluster_hypervisor = '$cluster_hypervisor' AND servidor_fisico = '$servidor_fisico' AND servidor_virtual = '$servidor_virtual' ";
                        $valida = mysqli_query($conex, $sql);
                        $num = mysqli_num_rows($valida);
                        if($num == 0 )
                        {
                            $insert = "INSERT INTO inventario_cco(criticidad,servicio,canales,aplicativo,umas,cluster_hypervisor,servidor_fisico,servidor_virtual,conciliacion_seguridad,estatus_seguridad,ubicacion,rack,fila,serial,direcciones_ip,entorno,activo_fijo,tipo,marca,modelo,fin_soporte,socket,cores,ram_gb,sistema_operativo,version_sistema_operativo,instancia_bd,tipo_bd,vs_bd,active,CREATE_DATE, CREATE_USER, UPDATE_DATE, UPDATE_USER) VALUES
                            ('$criticidad', '$servicio', '$canales', '$aplicativo', '$umas', '$cluster_hypervisor', '$servidor_fisico', '$servidor_virtual', 'N/A', 'N/A', '$ubicacion', '$rack','$fila', '$serial', '$direcciones_ip','$entorno', '$activo_fijo', '$tipo', '$marca', '$modelo', '$fin_soporte', '$socket', '$cores', '$ram_gb', '$sistema_operativo', '$version_sistema_operativo', '$instancia_bd', '$tipo_bd', '$vs_bd', 1, NOW(), '$creationUser', NOW(), '$updateUser')";
                            $result = mysqli_query($conex, $insert);
                            
                            if($result)
                            {
                                echo
                                "<script> 
                                    alert('El item Fue Creado exitosamente');
                                   location.assign('../../Inventario/index.php?inventario=Registrar&nombre=');
                                </script>";
                            }
                            else
                            {
                                echo "<script> 
                                        alert('ha ocurrido un error, vuelva a intentar');
                                        location.assign('../../Inventario/index.php?inventario=Registrar&nombre=');
                                    </script>";
                            }      
                        } 
                        else 
                        {
                            echo    
                                "<script> 
                                    alert('El item ya existe');
                                    location.assign('../../Inventario/index.php?inventario=Registrar&nombre=');
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
                        $criticidad = $_POST['nivel_criticidad'];
                        $servicio = $_POST['servicio'];
                        $canales = $_POST['canales'];
                        $aplicativo = $_POST['aplicativo'];
                        $umas = $_POST['umas'];
                        $cluster_hypervisor = $_POST['cluster_hypervisor'];
                        $servidor_fisico = $_POST['servidor_fisico'];
                        $servidor_virtual = $_POST['servidor_virtual'];
                        $conciliacion_seguridad = $_POST['conciliacion_seguridad'];
                        $estatus_seguridad = $_POST['estatus_seguridad'];
                        $ubicacion = $_POST['ubicacion'];
                        $rack = $_POST['rack'];
                        $fila = $_POST['fila'];
                        $serial = $_POST['serial'];
                        $direcciones_ip = $_POST['direcciones_ip'];
                        $entorno = $_POST['entorno'];
                        $activo_fijo = $_POST['activo_fijo'];
                        $tipo = $_POST['tipo'];
                        $marca = $_POST['marca'];
                        $modelo = $_POST['modelo'];
                        $fin_soporte = $_POST['fin_soporte'];
                        $socket = $_POST['socket'];
                        $cores = $_POST['cores'];
                        $ram_gb = $_POST['ram_gb'];
                        $sistema_operativo = $_POST['sistema_operativo'];
                        $version_sistema_operativo = $_POST['version_sistema_operativo'];
                        $instancia_bd = $_POST['instancia_bd'];
                        $tipo_bd = $_POST['tipo_bd'];
                        $vs_bd = $_POST['vs_bd'];

                        $sql = "SELECT * FROM inventario_cco WHERE id_codigo = '$id'";
                        $valida = mysqli_query($conex, $sql);
                        $num = mysqli_num_rows($valida);
                        if($num == 1 )
                        {
                            $update = "UPDATE inventario_cco 
                            SET  criticidad = '$criticidad'
                                ,servicio = '$servicio'
                                ,canales = '$canales' 
                                ,aplicativo = '$aplicativo'
                                ,umas = '$umas'
                                ,cluster_hypervisor = '$cluster_hypervisor'
                                ,servidor_fisico = '$servidor_fisico'
                                ,servidor_virtual = '$servidor_virtual'
                                ,conciliacion_seguridad = '$conciliacion_seguridad'
                                ,estatus_seguridad = '$estatus_seguridad'
                                ,ubicacion = '$ubicacion'
                                ,rack = '$rack'
                                ,fila = '$fila'
                                ,serial = '$serial'
                                ,direcciones_ip = '$direcciones_ip'
                                ,entorno = '$entorno'
                                ,activo_fijo = '$activo_fijo'
                                ,tipo = '$tipo'
                                ,marca = '$marca'
                                ,modelo = '$modelo'
                                ,fin_soporte = '$fin_soporte'
                                ,socket = '$socket'
                                ,cores = '$cores'
                                ,ram_gb = '$ram_gb'
                                ,sistema_operativo = '$sistema_operativo'
                                ,version_sistema_operativo = '$version_sistema_operativo'
                                ,instancia_bd = '$instancia_bd'
                                ,tipo_bd = '$tipo_bd'
                                ,vs_bd = '$vs_bd'
                                ,CREATE_DATE = NOW()
                                ,CREATE_USER = '$creationUser'
                                ,UPDATE_DATE = NOW()
                                ,UPDATE_USER = '$updateUser'
                            WHERE id_codigo = '$id'";
                            $result = mysqli_query($conex, $update);
                            
                            if($result)
                            {
                                echo
                                "<script> 
                                    alert('El registro fue actualizado');
                                    location.assign('../../Inventario/index.php?inventario=$inventario&nombre=$nombre&servidor=$servidor&value=$value&entorno=$entorno&tipo=$tipo');
                                </script>";
                            }
                            else
                            {
                                echo "<script> 
                                        alert('ha ocurrido un error, vuelva a intentar');
                                        location.assign('../../Inventario/index.php?inventario=$inventario&nombre=$nombre&servidor=$servidor&value=$value&entorno=$entorno&tipo=$tipo');
                                    </script>";
                            }      
                        } 
                    mysqli_close($conex);
                    }
                    break;
                    case 'delete':
                        if(isset($_POST['id']) && $_POST['id']!='')
                        {
                            
                            $sql = "SELECT * FROM inventario_cco WHERE id_codigo = '$id'";
                            $valida = mysqli_query($conex, $sql);
                            $num = mysqli_num_rows($valida);
                            if($num == 1 )
                            {
                                $delete = "UPDATE inventario_cco SET active = 0 WHERE id_codigo = '$id' ";
                                $result = mysqli_query($conex, $delete);
                                if($result)
                                {
                                    echo
                                    "<script> 
                                        alert('El Cargo Fue Eliminado exitosamente');
                                         location.assign('../../Inventario/index.php?inventario=$inventario&nombre=$nombre&servidor=$servidor&value=$value&entorno=$entorno&tipo=$tipo');
                                    </script>";
                                }
                                else
                                {
                                    echo "<script> 
                                            alert('ha ocurrido un error, vuelva a intentar');
                                            location.assign('../../Inventario/index.php?inventario=$inventario&nombre=$nombre&servidor=$servidor&value=$value&entorno=$entorno&tipo=$tipo');
                                        </script>";
                                }      
                            }
                            mysqli_close($conex);
                        }
                        break;
                }
            }
        }
