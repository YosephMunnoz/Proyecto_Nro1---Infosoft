<!DOCTYPE html>
<html lang="es">
    <!-- Llamo a la Cabecera -->
    <?php
    session_start();
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
                        include ('../conexion/inventario_filtros.php');
                    ?>
                    <!-- Bloque de botones filtro -->
                    <div class="container-fluid">
                        <div class="row mb-3">
                            <div class="col-6 d-flex justify-content-between">
                                <a href="../../Infosoft3/Inventario/servidorVirtual.php?nombre=Servidores Virtuales&servidor=N/A&value=2&entorno=PRODUCCION&tipo=SERVIDOR" class="d-none d-sm-inline-block btn btn-danger btn-sm text-white">
                                    <i class="fas fa-cogs fa-lg text-white"></i> Producción
                                </a>
                                <a href="../../Infosoft3/Inventario/servidorVirtual.php?nombre=Servidores Virtuales&servidor=N/A&value=2&entorno=TESTING&tipo=SERVIDOR" class="d-none d-sm-inline-block btn btn-danger btn-sm text-white">
                                <i class="fa-solid fa-cubes fa-lg text-white"></i> Testing
                                </a>
                                <a href="../../Infosoft3/Inventario/servidorVirtual.php?nombre=Servidores Virtuales&servidor=N/A&value=2&entorno=DESARROLLO&tipo=SERVIDOR" class="d-none d-sm-inline-block  btn btn-danger btn-sm text-white">
                                <i class="fa-solid fa-code fa-lg text-white"></i> Desarrollo
                                </a>
                                <a href="../../Infosoft3/Inventario/servidorVirtual.php?nombre=Servidores Virtuales&servidor=N/A&value=2&entorno=IMPLEMENTACION&tipo=SERVIDOR" class="d-none d-sm-inline-block  btn btn-danger btn-sm text-white">
                                <i class="fa-solid fa-check-double fa-lg text-white"></i> Implementación
                                </a>
                                <a href="../../Infosoft3/Inventario/servidorVirtual.php?nombre=Servidores Virtuales&servidor=N/A&value=2&entorno=APAGADO&tipo=SERVIDOR" class="d-none d-sm-inline-block  btn btn-danger btn-sm text-white">
                                <i class="fa-solid fa-power-off fa-lg text-white"></i> Apagados
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
                        <h5 class="modal-title" id="exampleModalLabel">¿Desea cerrar sesión?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Seleccione "Cerrar sesión" a continuación si está listo para finalizar su sesión actual.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="../conexion/signOut.php">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
