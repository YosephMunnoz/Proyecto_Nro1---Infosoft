<!-- tabla -->
<?php  if(isset($_SESSION['userId']) && $_SESSION['typeId'] == 1)  { ?>
<?php if($_GET['value'] == 1 || $_GET["value"] == 2 || $_GET["value"] == 3 ){?>
<div class="card shadow">
    <div class="card-header">
        <p class="h3 titulo obj" id="card">
            <?= $serv.':'?>
            <strong class="h5"> 
                <?php if(isset($serv) == null){ echo ""; } else { echo $link; } ?>
            </strong>
        </p>
    </div>
    <div class="card-body small">
        <div class="table-responsive">
            <table class="table table-sm table-hover table-striped text-center align-middle table-borderless display compact tabla" width="100%" cellspacing="0" id="dataTable">
            <thead class="table-light">
                <tr>
                    <th white="0.5px">id</th>
                    <th>Criticidad</th>
                    <th>Servicio</th>
                    <th>Canales</th>
                    <th>Nombre Cluster</th>
                    <th>Servidor Físico</th>
                    <th>Servidor Virtual</th>
                    <th>IP</th>
                    <th>Ubicación</th>
                    <th>Detalles</th>
                    <th>Editar</th>
                     <th>Eliminar</th>
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <tr>
                    <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else { foreach ($result as $r) { ?>
                    <th class="text-primary align-middle " white="0.5px"><?= $r['id_codigo']?></th>
                    <td scope="col" class="table-danger text-primary align-middle" white="4px" id="colors"><?= $r['criticidad'];?></td>
                    <td class="text-primary align-middle"><?= $r['servicio']; ?></td>
                    <td class="text-primary align-middle"><?= $r['canales']; ?></td>
                    <td class="text-primary align-middle"><?= $r['cluster_hypervisor']; ?></td>
                    <td class="text-primary align-middle"><?= $r['servidor_fisico']; ?></td>
                    <td class="text-primary align-middle"><?= $r['servidor_virtual']; ?></td>
                    <td class="text-primary align-middle"><?= $r['direcciones_ip']; ?></td>
                    <td class="text-primary align-middle"><?= $r['ubicacion']; ?></td>
                    <td style="width: 8%;">
                        <a role="button" class="d-none d-sm-inline-block btn btn-outline-dark icon-t" data-bs-toggle="modal" href="#detalles<?= $r['id_codigo']?>">
                            <strong><i class="fas fa-plus text-dark" ></i> Detalle</strong>
                        </a>
                    </td>
                    <td style="width: 8%;">
                        <a role= "button" class="d-none d-sm-inline-block btn btn-primary btn-sm icon-t" data-bs-toggle="modal" href="#edit<?= $r['id_codigo']?>">
                        <strong><i class="fas fa-user-pen fa-sm text-white" ></i> Editar
                        </a>
                    </td>
                    <td style="width: 8%;">
                        <a role= "button" class="d-none d-sm-inline-block btn btn-secondary btn-sm icon-t" data-bs-toggle="modal" href="#delete<?= $r['id_codigo']?>">
                            <i class="fas fa-trash-alt fa-sm text-white" ></i> Eliminar
                        </a>
                    </td>
                    <?php 
                        include ('../modals/inventario/detalles.php');
                        include ('../modals/inventario/edit.php');
                        include ('../modals/inventario/delete.php');

                    ?>    
                </tr>
                <?php } } ?>
                <caption>Listado del Catalogo de Servicio</caption>
            </tbody>
            </table>
        </div>
    </div>
</div>

<?php }else if($_GET["value"] == 4){?>
    <div class="card shadow">
        <div class="card-body small">
            <div class="table-responsive">
                 <table class="table table-sm table-hover table-striped text-center align-middle table-borderless display compact tabla" width="100%" cellspacing="0" id="dataTable">
                    <thead class="table-light">
                        <tr>
                            <th white="0.5px">id</th>
                            <th>Criticidad</th>
                            <th>Servicio</th>
                            <th>Canales</th>
                            <th>Nombre Cluster</th>
                            <th>Servidor Físico</th>
                            <th>Servidor Virtual</th>
                            <th>IP</th>
                            <th>Ubicación</th>
                            <th>Detalles</th>
                        </tr>
                    </thead>
                    <tbody class="table-group-divider">
                        <tr>
                            <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else { foreach ($result as $r) { ?>
                            <th class="text-primary align-middle " white="0.5px"><?= $r['id_codigo']?></th>
                            <td scope="col" class="table-danger text-primary align-middle" white="4px" id="colors"><?= $r['criticidad'];?></td>
                            <td class="text-primary align-middle"><?= $r['servicio']; ?></td>
                            <td class="text-primary align-middle"><?= $r['canales']; ?></td>
                            <td class="text-primary align-middle"><?= $r['cluster_hypervisor']; ?></td>
                            <td class="text-primary align-middle"><?= $r['servidor_fisico']; ?></td>
                            <td class="text-primary align-middle"><?= $r['servidor_virtual']; ?></td>
                            <td class="text-primary align-middle"><?= $r['direcciones_ip']; ?></td>
                            <td class="text-primary align-middle"><?= $r['ubicacion']; ?></td>
                            <td style="width: 8%;">
                                <a role="button" class="d-none d-sm-inline-block btn btn-outline-dark icon-t" data-bs-toggle="modal" href="#detalles<?= $r['id_codigo']?>">
                                    <strong><i class="fas fa-plus text-dark" ></i> Detalle</strong>
                                </a>
                            </td>
                            <?php 
                                include ('../modals/inventario/detalles.php');
                            ?>    
                        </tr>
                        <?php } } ?>
                        <caption>Listado del Catalogo de Servicio</caption>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<?php } } else {?>
    <?php if($_GET['value'] == 1 || $_GET["value"] == 2 || $_GET["value"] == 3 ){?>
<div class="card shadow">
    <div class="card-header">
        <p class="h3 titulo obj" id="card">
            <?= $serv.':'?>
            <strong class="h5"> 
                <?php if(isset($serv) == null){ echo ""; } else { echo $link; } ?>
            </strong>
        </p>
    </div>
    <div class="card-body small">
        <div class="table-responsive">
            <table class="table table-sm table-hover table-striped text-center align-middle table-borderless display compact tabla" width="100%" cellspacing="0" id="dataTable">
            <thead class="table-light">
                <tr>
                    <th white="0.5px">id</th>
                    <th>Criticidad</th>
                    <th>Servicio</th>
                    <th>Canales</th>
                    <th>Nombre Cluster</th>
                    <th>Servidor Físico</th>
                    <th>Servidor Virtual</th>
                    <th>IP</th>
                    <th>Ubicación</th>
                    <th>Detalles</th>
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <tr>
                    <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else { foreach ($result as $r) { ?>
                    <th class="text-primary align-middle " white="0.5px"><?= $r['id_codigo']?></th>
                    <td scope="col" class="table-danger text-primary align-middle" white="4px" id="colors"><?= $r['criticidad'];?></td>
                    <td class="text-primary align-middle"><?= $r['servicio']; ?></td>
                    <td class="text-primary align-middle"><?= $r['canales']; ?></td>
                    <td class="text-primary align-middle"><?= $r['cluster_hypervisor']; ?></td>
                    <td class="text-primary align-middle"><?= $r['servidor_fisico']; ?></td>
                    <td class="text-primary align-middle"><?= $r['servidor_virtual']; ?></td>
                    <td class="text-primary align-middle"><?= $r['direcciones_ip']; ?></td>
                    <td class="text-primary align-middle"><?= $r['ubicacion']; ?></td>
                    <td style="width: 8%;">
                        <a role="button" class="d-none d-sm-inline-block btn btn-outline-dark icon-t" data-bs-toggle="modal" href="#detalles<?= $r['id_codigo']?>">
                            <strong><i class="fas fa-plus text-dark" ></i> Detalle</strong>
                        </a>
                    </td>
                    <?php 
                        include ('../modals/inventario/detalles.php');
                    ?>    
                </tr>
                <?php } } ?>
                <caption>Listado del Catalogo de Servicio</caption>
            </tbody>
            </table>
        </div>
    </div>
</div>

<?php }else if($_GET["value"] == 4){?>
    <div class="card shadow">
        <div class="card-body small">
            <div class="table-responsive">
                 <table class="table table-sm table-hover table-striped text-center align-middle table-borderless display compact tabla" width="100%" cellspacing="0" id="dataTable">
                    <thead class="table-light">
                        <tr>
                            <th white="0.5px">id</th>
                            <th>Criticidad</th>
                            <th>Servicio</th>
                            <th>Canales</th>
                            <th>Nombre Cluster</th>
                            <th>Servidor Físico</th>
                            <th>Servidor Virtual</th>
                            <th>IP</th>
                            <th>Ubicación</th>
                            <th>Detalles</th>
                        </tr>
                    </thead>
                    <tbody class="table-group-divider">
                        <tr>
                            <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else { foreach ($result as $r) { ?>
                            <th class="text-primary align-middle " white="0.5px"><?= $r['id_codigo']?></th>
                            <td scope="col" class="table-danger text-primary align-middle" white="4px" id="colors"><?= $r['criticidad'];?></td>
                            <td class="text-primary align-middle"><?= $r['servicio']; ?></td>
                            <td class="text-primary align-middle"><?= $r['canales']; ?></td>
                            <td class="text-primary align-middle"><?= $r['cluster_hypervisor']; ?></td>
                            <td class="text-primary align-middle"><?= $r['servidor_fisico']; ?></td>
                            <td class="text-primary align-middle"><?= $r['servidor_virtual']; ?></td>
                            <td class="text-primary align-middle"><?= $r['direcciones_ip']; ?></td>
                            <td class="text-primary align-middle"><?= $r['ubicacion']; ?></td>
                            <td style="width: 8%;">
                                <a role="button" class="d-none d-sm-inline-block btn btn-outline-dark icon-t" data-bs-toggle="modal" href="#detalles<?= $r['id_codigo']?>">
                                    <strong><i class="fas fa-plus text-dark" ></i> Detalle</strong>
                                </a>
                            </td>
                            <?php 
                                include ('../modals/inventario/detalles.php');
                            ?>    
                        </tr>
                        <?php } } ?>
                        <caption>Listado del Catalogo de Servicio</caption>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

<?php } }?>