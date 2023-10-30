<!-- tabla -->
<?php 
     if(isset($_SESSION['userId']) && $_SESSION['typeId'] == 1) 
     {
        if($_GET["value"] == 1){?>
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
                    <th>Editar</th>
                    <th>Eliminar</th>
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <tr>
                    <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else { foreach ($result as $r) { ?>
                    <th class="text-primary align-middle " white="0.5px"><?= $r['KECS_ID']?></th>
                    <td scope="col" class="table-danger text-primary align-middle" white="4px" id="colors"><?= $r['KENC_CRITICAL_LEVEL'];?></td>
                    <td class="text-primary align-middle"><?= $r['KESRV_SERVER']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEHN_HOSTNAME']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEIP_IP']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEIDB_INSTANCE']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEB_BUS']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KECT_CAPA_TUXEDO']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEW_WEBLOGIC']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEU_LOCATION']; ?></td>
                    <td style="width: 8%;">
                    <a role="button" class="d-none d-sm-inline-block btn btn-warning btn-sm icon-t" data-bs-toggle="modal" href="#detalles<?= $r['KECS_ID']?>">
                    <i class="fas fa-plus fa-sm text-white" ></i> Detalles
                    </a>
                    </td>
                    <td style="width: 8%;">
                        <a role="button" class="d-none d-sm-inline-block btn btn-primary btn-sm icon-t" data-bs-toggle="modal" href="#edit<?= $r['KECS_ID']?>">
                            <i class="fas fa-user-pen fa-sm text-white" ></i> Editar
                        </a>
                    </td>
                    <td style="width: 8%;">
                        <a role="button" class="d-none d-sm-inline-block btn btn-secondary btn-sm icon-t" data-bs-toggle="modal" href="#delete<?= $r['KECS_ID']?>">
                            <i class="fas fa-trash-alt fa-sm text-white" ></i> Eliminar
                        </a>
                    </td>
                    <?php include ('../modals/catalogo/detalles.php')?>
                    <?php include ('../modals/catalogo/edit.php')?> 
                    <?php include ('../modals/catalogo/delete.php')?>     
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
            <table class="table table-sm table-hover table-striped text-center align-middle table-borderless display compact tabla" width="100%" cellspacing="0" id="dataTable">
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
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <tr>
                    <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else { foreach ($result as $r) { ?>
                    <th class="text-primary align-middle" white="0.5px"><?= $r['KECS_ID']?></th>
                    <td scope="col" class="table-danger text-primary align-middle" white="4px" id="colors"><?= $r['KENC_CRITICAL_LEVEL']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KECA_CHANNEL']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KESRV_SERVER']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEHN_HOSTNAME']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEIP_IP']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEIDB_INSTANCE']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEB_BUS']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KECT_CAPA_TUXEDO']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEW_WEBLOGIC']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEU_LOCATION']; ?></td>
                    <td style="width: 8%;" class="align-middle">
                    <a role="button" class="d-none d-sm-inline-block btn btn-warning btn-sm icon-t" data-bs-toggle="modal" href="#detalles<?= $r['KECS_ID']?>">
                    <i class="fas fa-plus fa-sm text-white" ></i> Detalles
                    </a>
                    </td>
                    <?php include ('../modals/catalogo/detalles.php')?>    
                </tr>
                <?php } } ?>
                <caption>Listado del Catalogo de Servicio</caption>
            </tbody>
            </table>
        </div>
    </div>
</div>
<?php } } else {
    if($_GET["value"] == 1){?>
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
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <tr>
                    <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else { foreach ($result as $r) { ?>
                    <th class="text-primary align-middle" white="0.5px"><?= $r['KECS_ID']?></th>
                    <td scope="col" class="table-danger text-primary align-middle" white="4px" id="colors"><?= $r['KENC_CRITICAL_LEVEL']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KECA_CHANNEL']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KESRV_SERVER']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEHN_HOSTNAME']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEIP_IP']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEIDB_INSTANCE']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEB_BUS']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KECT_CAPA_TUXEDO']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEW_WEBLOGIC']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEU_LOCATION']; ?></td>
                    <td style="width: 8%;">
                    <a role="button" class="d-none d-sm-inline-block btn btn-warning btn-sm icon-t" data-bs-toggle="modal" href="#detalles<?= $r['KECS_ID']?>">
                    <i class="fas fa-plus fa-sm text-white" ></i> Detalles
                    </a>
                    </td>
                    <?php include ('../modals/catalogo/detalles.php')?>    
                </tr>
                <?php } } ?>
                <caption>Listado del Catalogo de Servicio</caption>
            </tbody>
            </table>
        </div>
    </div>
</div>
<?php } else if($_GET["value"] == 2){?>
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
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <tr>
                    <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else { foreach ($result as $r) { ?>
                    <th class="text-primary align-middle" white="0.5px"><?= $r['KECS_ID']?></th>
                    <td scope="col" class="table-danger text-primary align-middle" white="4px" id="colors"><?= $r['KENC_CRITICAL_LEVEL']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KECA_CHANNEL']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KESRV_SERVER']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEHN_HOSTNAME']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEIP_IP']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEIDB_INSTANCE']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEB_BUS']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KECT_CAPA_TUXEDO']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEW_WEBLOGIC']; ?></td>
                    <td class="text-primary align-middle"><?= $r['KEU_LOCATION']; ?></td>
                    <td style="width: 8%;" class="align-middle">
                    <a role="button" class="d-none d-sm-inline-block btn btn-warning btn-sm icon-t" data-bs-toggle="modal" href="#detalles<?= $r['KECS_ID']?>">
                    <i class="fas fa-plus fa-sm text-white" ></i> Detalles
                    </a>
                    </td>
                    <?php include ('../modals/catalogo/detalles.php')?>    
                </tr>
                <?php } } ?>
                <caption>Listado del Catalogo de Servicio</caption>
            </tbody>
            </table>
        </div>
    </div>
</div>
<?php } }?>