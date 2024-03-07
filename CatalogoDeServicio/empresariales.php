<!-- Bloque de botones filtro -->
<div class="container-fluid">
    <div class="row mb-3">
        <div class="col-xxl-6 col-xl-6 col-lg-12 col-md-12 col-sm-12 d-flex justify-content-between">
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=EMPRESARIALES&value=1&canal=DNS" class="d-none d-sm-inline-block btn btn-primary btn-sm text-white">
                <i class="fa-solid fa-network-wired fa-lg text-white"></i> DNS
            </a>
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=EMPRESARIALES&value=1&canal=M-CONTENIDO" class="d-none d-sm-inline-block btn btn-primary btn-sm text-white">
            <i class="fa-solid fa-window-maximize fa-lg text-white"></i> M-CONTENIDO
            </a>
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=EMPRESARIALES&value=1&canal=PORTAL SENIAT" class="d-none d-sm-inline-block  btn btn-primary btn-sm text-white">
            <i class="fa-regular fa-window-restore fa-lg text-white"></i> PORTAL SENIAT
            </a>
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=EMPRESARIALES&value=1&canal=REMEDY" class="d-none d-sm-inline-block  btn btn-primary btn-sm text-white">
            <i class="fa-solid fa-laptop-code fa-lg text-white"></i> REMEDY
            </a>
        </div>
        <div class="col-xxl-6 col-xl-6 col-lg-12 col-md-12 col-sm-12 d-flex justify-content-end">
            <a href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=EMPRESARIALES&value=2" class="d-none d-sm-inline-block btn btn-warning btn-sm text-white">
            <i class="fa-solid fa-box-archive text-white fa-lg"></i> Servicio
            </a>
        </div>
    </div>
    <div>
        <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else {  include_once ('tabla.php');}?>   
    </div>
</div>

        