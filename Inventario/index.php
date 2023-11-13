<!DOCTYPE html>
<html lang="es">
    <?php
    session_start();
        include '../home/head.html';
    ?>
    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">
            <?php
                include '../home/sidebar.php';
             ?>
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                <?php
                        include ('../home/navbar.php');
                        include ('../../Infosoft3/conexion/inventario/inventario_filtros.php');
                            if(isset($_GET['inventario']));
                                    switch ($_GET['inventario']) 
                                    {
                                        case 'Registrar':
                                            //pagina de Registrar
                                            // require_once ('../CatalogoDeServicio/REGISTRAR.php');
                                            include '../home/mantenimiento.php';
                                        break;
                                        case 'Resumen':
                                            // Pagina Inventarios Resumen
                                            include ('../inventario/resumen.php');
                                        break;
                                        case 'Servidores Fisicos':
                                            //pagina de Inventario servidores fisicos
                                            require_once ('../inventario/servidorFisico.php');
                                        break;
                                        case 'Servidores Virtuales':
                                            //pagina de Inventario servidores virtuales
                                            require_once ('../inventario/servidorVirtual.php');
                                        break;
                                        case 'Servidores Unix':
                                            //pagina de Inventario servidores unix
                                            require_once ('../inventario/servidorUnix.php');
                                        break;
                                        case 'Servidores Windows':
                                            //pagina de Inventario servidores windows
                                            require_once ('../inventario/servidorWindows.php');
                                        break;
                                        case '0':
                                            //pagina de Inventario servidores general
                                            require_once ('../inventario/general.php');
                                        break;
                                    }
                        // include '../home/main.php';
                        include '../modals/users/settings_session.php'
                    ?>
                </div>
                    <!-- End of Main Content -->
                    <?php
                        include '../home/footer.html';
                    ?>
            </div>
        </div>
        
        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

         <!-- Logout Modal-->
         <?php
            include ('../modals/users/signOut.php');
        ?>
    </body>
</html>