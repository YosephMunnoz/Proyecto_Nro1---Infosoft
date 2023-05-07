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

                        <!-- tabla -->
                        <div class="card shadow">
                            <div class="card-header">
                                <p class="h3 titulo"><?= $serv.':'?><strong class="h5"> <?php if(isset($_GET["canal"])!= null){ echo $link; }else{echo "";
                                } ?></strong></p>
                            </div>
                            <div class="card-body small">
                                <div class="table-responsive">
                                    <table class="table table-sm table-hover table-striped text-center align-middle table-borderless display compact" width="100%" cellspacing="0" id="dataTable">
                                        <thead class="table-light">
                                            <tr>
                                                <th>Criticidad</th>
                                                <th>Servidor</th>
                                                <th>Nombre</th>
                                                <th>IP</th>
                                                <th>BBDD</th>
                                                <th>Bus</th>
                                                <th>Tuxedo</th>
                                                <th>Weblogic</th>
                                                <th>ubicación</th>
                                                <th>Detalles</th>
                                                <th>Editar</th>
                                            </tr>
                                        </thead>
                                        <tbody class="table-group-divider">
                                            <tr>
                                            <?php  if(isset($_GET["value"]) == null){ echo "Sin Data"; }else { foreach ($result as $r) { ?>
                                                <td scope="col" class="table-danger text-primary" white="4px" id="colors"><?= $r['nivel_criticidad']; ?></td>
                                                <td class="text-primary"><?= $r['servidor']; ?></td>
                                                <td class="text-primary"><?= $r['hostname']; ?></td>
                                                <td class="text-primary"><?= $r['ip']; ?></td>
                                                <td class="text-primary"><?= $r['bbdd']; ?></td>
                                                <td class="text-primary"><?= $r['bus']; ?></td>
                                                <td class="text-primary"><?= $r['capa_tuxedo']; ?></td>
                                                <td class="text-primary"><?= $r['weblogic']; ?></td>
                                                <td class="text-primary"><?= $r['ubicacion']; ?></td>
                                                <td style="width: 8%;">
                                                    <a href="#" class="d-none d-sm-inline-block btn btn-warning btn-sm icon-t" role="button"  data-bs-toggle="modal" data-bs-target="#update<--?= $r['id_reserva_quirofano'];?>">
                                                        <i class="fas fa-plus fa-sm text-white" ></i> Detalles
                                                    </a>
                                                </td>
                                                <td style="width: 8%;">
                                                    <a href="#" class="d-none d-sm-inline-block btn btn-primary btn-sm icon-t" role="button" data-bs-toggle="modal" data-bs-target="#modifi<--?= $r['id_reserva_quirofano'];?>">
                                                    <i class="fas fa-user-pen fa-sm text-white" ></i> Modificar
                                                    </a>
                                                </td>
                                            </tr>    
                                            <?php } } }?>
                                            <caption>Listado del Catalogo de Servicio</caption>
                                        </tbody>
                                        <tfoot class="fw-bold">
                                            <tr>
                                                <th>Criticidad</th>
                                                <th>Servidor</th>
                                                <th>Nombre</th>
                                                <th>IP</th>
                                                <th>BBDD</th>
                                                <th>Bus</th>
                                                <th>Tuxedo</th>
                                                <th>Weblogic</th>
                                                <th>ubicación</th>
                                                <th>Detalles</th>
                                                <th>Editar</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <!-- Incluyo al footer-->
                    <?php
                        include ('../home/footer.html');
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
