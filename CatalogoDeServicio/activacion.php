<!-- Bloque de botones filtro -->
<main class="container-fluid">
    <div class="row g-2 mb-3">
        <div class="col-xxl-6 col-xl-6 col-lg-12 col-md-12 col-sm-12 d-flex justify-content-between">
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=ACTIVACION&value=1&canal=APP CAPTURE" class="d-none d-sm-inline-block btn btn-primary btn-sm text-white">
                <i class="fas fa-mobile-alt fa-lg text-white"></i> App Capture
            </a>
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=ACTIVACION&value=1&canal=APROVISIONAMIENTO ACTIVACION / DESACTIVACION (VOZ - DATOS - SMS - TV)" class="d-none d-sm-inline-block btn btn-primary btn-sm text-white">
            <i class="fas fa-dolly-flatbed fa-lg text-white"></i> Aprovisionamiento
            </a>
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=ACTIVACION&value=1&canal=CVSC" class="d-none d-sm-inline-block  btn btn-primary btn-sm text-white">
            <i class="fa-solid fa-cubes fa-lg text-white"></i> CVSC
            </a>
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=ACTIVACION&value=1&canal=GESTOR DOCUMENTAL" class="d-none d-sm-inline-block  btn btn-primary btn-sm text-white">
            <i class="fa-solid fa-floppy-disk fa-lg text-white"></i> Gestor Documental
            </a>
        </div>
        <div class="col-xxl-6 col-xl-6 col-lg-12 d-flex col-md-12 col-sm-12 justify-content-end">
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=ACTIVACION&value=2"class="d-none d-sm-inline-block btn btn-warning btn-sm text-white">
            <i class="fa-solid fa-box-archive text-white fa-lg"></i> Servicio
            </a>
        </div>
    </div>
    <div>
        <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else {  include_once ('tabla.php');}?>   
    </div>
</main>