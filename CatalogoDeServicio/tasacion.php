<!-- Bloque de botones filtro -->
<div class="container-fluid">
    <div class="row g-2 mb-3">
        <div class="col-xxl-6 col-xl-6 col-lg-9 col-md-12 col-sm-12 d-flex justify-content-between">
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=TASACION&value=1&canal=INTERMEDIATE" class="d-none d-sm-inline-block btn btn-primary btn-sm text-white">
                <i class="fa-solid fa-file-invoice-dollar fa-lg text-white"></i> INTERMEDIATE
            </a>
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=TASACION&value=1&canal=FACTURACION POSTPAGO DE VOZ - DATOS - SMS" class="d-none d-sm-inline-block btn btn-primary btn-sm text-white">
            <i class="fa-solid fa-money-check-dollar fa-lg text-white"></i> FACTURACION POSTPAGO DE VOZ - DATOS - SMS
            </a>
        </div>
        <div class="col-xxl-6 col-xl-6 col-lg-3 col-md-12 col-sm-12 d-flex justify-content-end">
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=TASACION&value=2"class="d-none d-sm-inline-block btn btn-warning btn-sm text-white">
            <i class="fa-solid fa-box-archive text-white fa-lg"></i> Servicio
            </a>
        </div>
    </div>
    <div>
        <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else {  include_once ('tabla.php');}?>   
    </div>
</div>