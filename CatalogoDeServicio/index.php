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
                        include ('../conexion/catalogo_filtros.php');
                            if(isset($_GET['servicio']));
                                    switch ($_GET['servicio']) 
                                    {
                                        case 'REGISTRAR':
                                            //pagina de TASACION
                                            // require_once ('../CatalogoDeServicio/REGISTRAR.php');
                                            include '../home/mantenimiento.php';
                                        break;
                                        case 'ACTIVACION':
                                            // Pagina Activación
                                            include ('../CatalogoDeServicio/activacion.php');
                                        break;
                                        case 'EMPRESARIALES':
                                            //pagina de Empresariales
                                            require_once ('../CatalogoDeServicio/empresariales.php');
                                        break;
                                        case 'FACTURACION':
                                            //pagina de FACTURACION
                                            require_once ('../CatalogoDeServicio/facturacion.php');
                                        break;
                                        case 'RECARGAS':
                                            //pagina de RECARGAS
                                            require_once ('../CatalogoDeServicio/recargas.php');
                                        break;
                                        case 'TASACION':
                                            //pagina de Empresariales
                                            require_once ('../CatalogoDeServicio/tasacion.php');
                                        break;
                                        case '0':
                                            //pagina de catalogo
                                            require_once ('../CatalogoDeServicio/catalogo.php');
                                        break;
                                    }
                        // include '../home/main.php';
                        include '../modals/users/settings_session.php'
                    ?>
                </div>
                    <!-- End of Main Content -->
                    <?php
                        include '../home/footer.html'
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

