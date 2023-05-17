<!DOCTYPE html>
<html lang="es">
    <!-- Llamo a la Cabecera -->
    <?php
        include ('../home/head.html');
    ?>
    <body id="page-top text-primary" >

        <!-- Llamo al panel de menú -->
        <div id="wrapper">
            <?php include ('../home/sidebar.php'); ?>

            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Llamo al nav y conexion a BD -->
                <div id="content">
                    <?php {
                        include ('../home/navbar.php');
                        include ('../modals/settings_session.php');
                        include ('../conexion/catalogo_filtros.php');
                    ?>
                    <!-- Bloque de botones filtro -->
                    <div class="container-fluid">
                        <div class="row mb-3">
                            <div class="col-6 d-flex justify-content-between">
                                <a href="../../Infosoft3/CatalogoDeServicio/activacion.php?servicio=ACTIVACION&value=1&canal=APP CAPTURE" class="d-none d-sm-inline-block btn btn-primary btn-sm text-white">
                                    <i class="fas fa-mobile-alt fa-lg text-white"></i> App Capture
                                </a>
                                <a href="../../Infosoft3/CatalogoDeServicio/activacion.php?servicio=ACTIVACION&value=1&canal=APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)" class="d-none d-sm-inline-block btn btn-primary btn-sm text-white">
                                <i class="fas fa-dolly-flatbed fa-lg text-white"></i> Aprovisionamiento
                                </a>
                                <a href="../../Infosoft3/CatalogoDeServicio/activacion.php?servicio=ACTIVACION&value=1&canal=CVSC" class="d-none d-sm-inline-block  btn btn-primary btn-sm text-white">
                                <i class="fa-solid fa-cubes fa-lg text-white"></i> CVSC
                                </a>
                                <a href="../../Infosoft3/CatalogoDeServicio/activacion.php?servicio=ACTIVACION&value=1&canal=GESTOR DOCUMENTAL" class="d-none d-sm-inline-block  btn btn-primary btn-sm text-white">
                                <i class="fa-solid fa-floppy-disk fa-lg text-white"></i> Gestor Documental
                                </a>
                            </div>
                            <div class="col-6 d-flex justify-content-end">
                                <a href="../../Infosoft3/CatalogoDeServicio/activacion.php?servicio=ACTIVACION&value=2"class="d-none d-sm-inline-block btn btn-warning btn-sm text-white">
                                <i class="fa-solid fa-box-archive text-white fa-lg"></i> Servicio
                                </a>
                            </div>
                        </div>
                        <div>
                            <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else {  include_once ('tabla.php');}?>   
                        </div>
                    </div>
                </div>
                    <!-- Incluyo al footer-->
                    <?php
                        include ('../home/footer.html'); }
                    ?>
            </div>
        </div>

        
        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
