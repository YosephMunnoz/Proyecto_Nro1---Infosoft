<!-- tabla -->
<?php if($_GET["value"] == 1){?>
<div class="card shadow">
    <div class="card-header">
        <p class="h3 titulo">
            <?= $serv.':'?>
            <strong class="h5"> 
                <?php if(isset($_GET["canal"])!= null){ echo $link; }else{echo ""; } ?>
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
                    <th>Servidor</th>
                    <th>Nombre</th>
                    <th>IP</th>
                    <th>BBDD</th>
                    <th>Bus</th>
                    <th>Tuxedo</th>
                    <th>Weblogic</th>
                    <th>ubicación</th>
                    <th>Detalles</th>
                <!-- <th>Editar</th> -->
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <tr>
                    <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else { foreach ($result as $r) { ?>
                    <th class="text-primary align-middle " white="0.5px"><?= $r['id']?></th>
                    <td scope="col" class="table-danger text-primary align-middle" white="4px" id="colors"><?= $r['nivel_criticidad'];?></td>
                    <td class="text-primary align-middle"><?= $r['servidor']; ?></td>
                    <td class="text-primary align-middle"><?= $r['hostname']; ?></td>
                    <td class="text-primary align-middle"><?= $r['ip']; ?></td>
                    <td class="text-primary align-middle"><?= $r['bbdd']; ?></td>
                    <td class="text-primary align-middle"><?= $r['bus']; ?></td>
                    <td class="text-primary align-middle"><?= $r['capa_tuxedo']; ?></td>
                    <td class="text-primary align-middle"><?= $r['weblogic']; ?></td>
                    <td class="text-primary align-middle"><?= $r['ubicacion']; ?></td>
                    <td style="width: 8%;">
                    <a role="button" class="d-none d-sm-inline-block btn btn-warning btn-sm icon-t" data-bs-toggle="modal" href="#detalles<?= $r['id']?>">
                    <i class="fas fa-plus fa-sm text-white" ></i> Detalles
                    </a>
                    </td>
                    <!--   <td style="width: 8%;">
                    <a href="#" class="d-none d-sm-inline-block btn btn-primary btn-sm icon-t" role="button" data-bs-toggle="modal" data-bs-target="#modifi<--?= $r['id_reserva_quirofano'];?>">
                    <i class="fas fa-user-pen fa-sm text-white" ></i> Modificar
                    </a>
                    </td> -->
                    <?php include ('../modals/catalogo/detalles.php')?>    
                </tr>
                <?php } } ?>
                <caption>Listado del Catalogo de Servicio</caption>
            </tbody>
            </table>
        </div>
    </div>
</div>
<?php }else if($_GET["value"] == 2){?>
    <div class="card shadow">
    <div class="card-header">
        <p class="h3 titulo">
            <?= $serv.':'?>
            <strong class="h5"> 
                <?php if(isset($_GET["canal"])!= null){ echo $link; }else{echo ""; } ?>
            </strong>
        </p>
    </div>
    <div class="card-body small">
        <div class="table-responsive">
            <table class="table table-sm table-hover table-striped text-center align-middle table-borderless display compact " width="100%" cellspacing="0" id="dataTable">
            <thead class="table-light">
                <tr>
                    <th white="0.5px">id</th>
                    <th>Criticidad</th>
                    <th>canal/aplicativo</th>
                    <th>Servidor</th>
                    <th>Nombre</th>
                    <th>IP</th>
                    <th>BBDD</th>
                    <th>Bus</th>
                    <th>Tuxedo</th>
                    <th>Weblogic</th>
                    <th>ubicación</th>
                    <th>Detalles</th>
                <!-- <th>Editar</th> -->
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <tr>
                    <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else { foreach ($result as $r) { ?>
                    <th class="text-primary align-middle" white="0.5px"><?= $r['id']?></th>
                    <td scope="col" class="table-danger text-primary align-middle" white="4px" id="colors"><?= $r['nivel_criticidad']; ?></td>
                    <td class="text-primary align-middle"><?= $r['canal_aplicativo']; ?></td>
                    <td class="text-primary align-middle"><?= $r['servidor']; ?></td>
                    <td class="text-primary align-middle"><?= $r['hostname']; ?></td>
                    <td class="text-primary align-middle"><?= $r['ip']; ?></td>
                    <td class="text-primary align-middle"><?= $r['bbdd']; ?></td>
                    <td class="text-primary align-middle"><?= $r['bus']; ?></td>
                    <td class="text-primary align-middle"><?= $r['capa_tuxedo']; ?></td>
                    <td class="text-primary align-middle"><?= $r['weblogic']; ?></td>
                    <td class="text-primary align-middle"><?= $r['ubicacion']; ?></td>
                    <td style="width: 8%;" class="align-middle">
                    <a role="button" class="d-none d-sm-inline-block btn btn-warning btn-sm icon-t" data-bs-toggle="modal" href="#detalles<?= $r['id']?>">
                    <i class="fas fa-plus fa-sm text-white" ></i> Detalles
                    </a>
                    </td>
                    <!--   <td style="width: 8%;">
                    <a href="#" class="d-none d-sm-inline-block btn btn-primary btn-sm icon-t" role="button" data-bs-toggle="modal" data-bs-target="#modifi<--?= $r['id_reserva_quirofano'];?>">
                    <i class="fas fa-user-pen fa-sm text-white" ></i> Modificar
                    </a>
                    </td> -->
                    <?php include ('../modals/catalogo/detalles.php')?>    
                </tr>
                <?php } } ?>
                <caption>Listado del Catalogo de Servicio</caption>
            </tbody>
            </table>
        </div>
    </div>
</div>
<?php }?>