<?php
    include ('../conexion/querys_resumen_inventario.php');{
?>
<section class="container-fluid">
    <div class="row">
        <div class="col-12 d-flex justify-content-between">
            <a onclick="fisicos()" class="mb-3 d-none d-sm-inline-block btn btn-success text-white" href="#">
                <i class="fas fa-server fa-lg text-white me-3"></i><strong>Servidores Físicos</strong>
            </a>
            <a onclick="virtuales()" class="mb-3 d-none d-sm-inline-block btn btn-danger text-white" href="#">
                <i class="fas fa-desktop fa-lg text-white me-3"></i><strong>Servidores Virtuales</strong>
            </a>
            <a onclick="linux()" class="mb-3 d-none d-sm-inline-block btn btn-warning text-white" href="#">
                <i class="fab fa-linux fa-lg text-white me-3"></i><strong>Servidores Unix</strong>
            </a>
            <a onclick="windows()" class="mb-3 d-none d-sm-inline-block btn btn-primary text-white" href="#">
                <i class="fab fa-windows fa-lg text-white me-3"></i><strong>Servidores Windows</strong>
            </a>
        </div>
    </div>
</section>
<section class="container-fluid">
    <div class="row justify-content-center">
        <?php
            include ('RservidoresFisicos.php');
            include ('RservidoresVirtuales.php');
            include ('RservidoresLinux.php');
            include ('RservidoresWindows.php');
        ?>
    </div>   
</section>

<?php } ?>