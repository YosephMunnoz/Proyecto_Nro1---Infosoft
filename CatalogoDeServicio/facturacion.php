<!-- Bloque de botones filtro -->
<div class="container-fluid">
    <div class="row mb-3">
        <div class="col-5 d-flex justify-content-between">
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=FACTURACION&value=1&canal=prepago" class="d-none d-sm-inline-block btn btn-primary btn-sm text-white">
                <i class="fa-solid fa-wallet fa-lg text-white"></i> PREPAGO
            </a>
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=FACTURACION&value=1&canal=ICS" class="d-none d-sm-inline-block btn btn-primary btn-sm text-white">
            <i class="fa-regular fa-credit-card fa-lg text-white"></i> ICS
            </a>
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=FACTURACION&value=1&canal=FACTEL" class="d-none d-sm-inline-block  btn btn-primary btn-sm text-white">
            <i class="fa-solid fa-credit-card  fa-lg text-white"></i> FACTEL
            </a>
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=FACTURACION&value=1&canal=FIDELIZAME" class="d-none d-sm-inline-block  btn btn-primary btn-sm text-white">
            <i class="fa-regular fa-credit-card fa-lg text-white"></i> FIDELIZAME
            </a>
        </div>
        <div class="col-7 d-flex justify-content-end">
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=FACTURACION&value=2"class="d-none d-sm-inline-block btn btn-warning btn-sm text-white">
            <i class="fa-solid fa-box-archive text-white fa-lg"></i> Servicio
            </a>
        </div>
    </div>
    <div>
        <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else {  include_once ('tabla.php');}?>   
    </div>
</div>