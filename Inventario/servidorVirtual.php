<!-- Bloque de botones filtro -->
<div class="container-fluid">
    <div class="row mb-3">
        <div class="col-6 d-flex justify-content-between">
            <a href="../../Infosoft3/Inventario/index.php?inventario=Servidores Virtuales&nombre=Servidores Virtuales&servidor=N/A&value=2&entorno=PRODUCCION&tipo=SERVIDOR" class="d-none d-sm-inline-block btn btn-danger btn-sm text-white">
                <i class="fas fa-cogs fa-lg text-white"></i> Producción
            </a>
            <a href="../../Infosoft3/Inventario/index.php?inventario=Servidores Virtuales&nombre=Servidores Virtuales&servidor=N/A&value=2&entorno=TESTING&tipo=SERVIDOR" class="d-none d-sm-inline-block btn btn-danger btn-sm text-white">
            <i class="fa-solid fa-cubes fa-lg text-white"></i> Testing
            </a>
            <a href="../../Infosoft3/Inventario/index.php?inventario=Servidores Virtuales&nombre=Servidores Virtuales&servidor=N/A&value=2&entorno=DESARROLLO&tipo=SERVIDOR" class="d-none d-sm-inline-block  btn btn-danger btn-sm text-white">
            <i class="fa-solid fa-code fa-lg text-white"></i> Desarrollo
            </a>
            <a href="../../Infosoft3/Inventario/index.php?inventario=Servidores Virtuales&nombre=Servidores Virtuales&servidor=N/A&value=2&entorno=IMPLEMENTACION&tipo=SERVIDOR" class="d-none d-sm-inline-block  btn btn-danger btn-sm text-white">
            <i class="fa-solid fa-check-double fa-lg text-white"></i> Implementación
            </a>
            <a href="../../Infosoft3/Inventario/index.php?inventario=Servidores Virtuales&nombre=Servidores Virtuales&servidor=N/A&value=2&entorno=APAGADO&tipo=SERVIDOR" class="d-none d-sm-inline-block  btn btn-danger btn-sm text-white">
            <i class="fa-solid fa-power-off fa-lg text-white"></i> Apagados
            </a>
        </div>
    </div>
    <div>
        <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else {  include_once ('tabla.php');}?>   
    </div>
</div>
               