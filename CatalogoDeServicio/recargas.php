<!-- Bloque de botones filtro -->
<div class="container-fluid">
    <div class="row g-2 mb-3">
        <div class="col-xxl-4 col-xl-4 col-lg-6 col-md-8 col-sm-12 d-flex justify-content-between">
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=RECARGAS&value=1&canal=APP" class="d-none d-sm-inline-block btn btn-primary btn-sm text-white">
                <i class="fa-solid fa-mobile-alt fa-lg text-white"></i> APP
            </a>
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=RECARGAS&value=1&canal=BANCOS Y GRE" class="d-none d-sm-inline-block btn btn-primary btn-sm text-white">
            <i class="fa-solid fa-piggy-bank fa-lg text-white"></i> BANCOS Y GRE
            </a>
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=RECARGAS&value=1&canal=MM" class="d-none d-sm-inline-block  btn btn-primary btn-sm text-white">
            <i class="fa-solid fa-mobile-retro fa-lg text-white"></i> MM
            </a>
        </div>
        <div class="col-xxl-8 col-xl-8 col-lg-6 col-md-4 col-sm-12 d-flex justify-content-end">
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=RECARGAS&value=2"class="d-none d-sm-inline-block btn btn-warning btn-sm text-white">
            <i class="fa-solid fa-box-archive text-white fa-lg"></i> Servicio
            </a>
        </div>
    </div>
    <div>
        <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else {  include_once ('tabla.php');}?>   
    </div>
</div>