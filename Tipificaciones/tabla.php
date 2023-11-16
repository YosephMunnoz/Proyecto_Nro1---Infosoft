<!-- tabla -->
<?php 
     if(isset($_SESSION['userId']) && $_SESSION['typeId'] == 1)  {?>
<div class="card shadow">
    <div class="card-header text-uppercase">
        <p class="h3 titulo obj" id="card">TIPIFICACIONES
            <strong class="h5"> Area de:
                <?php if(isset($_GET["area"])!= null){ echo $link; }else{echo ""; } ?>
            </strong> 
        </p> 
    </div>
    <div class="card-body small">
        <div class="table-responsive">
            <table class="table table-sm table-striped text-center align-middle table-borderless tabla" width="100%" cellspacing="0" id="dataTable">
                <thead class="table-light">
                    <tr>
                        <th colspan="4" rowspan="3" class="table-success h5 text-uppercase text-center align-middle">Fallas tipicas</th>
                        <th colspan="6" class="table-success h5 text-uppercase text-center">Categorias</th>
                        <th colspan="2" rowspan="3" class="table-success h5 text-uppercase text-center align-middle">Acciones</th>
                    </tr>
                    <tr>
                        <th colspan="3" class="h5 text-uppercase text-center table-primary">Operación</th>
                        <th colspan="3" class="h5 text-uppercase text-center table-primary">Producto</th>
                    </tr>
                    <tr>
                        <th colspan="6" class="table-success h5 text-uppercase text-center">Niveles</th>
                    </tr>                       
                    <tr>
                        <th white="0.5px">id</th>
                        <th white="0.5px">N°</th>
                        <th>Caso</th>
                        <th class="">Resumen</th>
                        <th>1</th>
                        <th>2</th>
                        <th>3</th>
                        <th>1</th>
                        <th>2</th>
                        <th>3</th>
                        <th style="width: 6%;">Editar</th>
                        <th style="width: 6%;">Eliminar</th>
                    </tr>
                </thead>
                <tbody class="table-group-divider">
                    <tr>
                        <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else { foreach ($result as $r) { ?>
                        <th class="text-primary align-middle " white="0.5px"><?= $r['KET_ID']?></th>
                        <td class="text-primary align-middle" white="0.5px" ><?= $r['KET_ORDER'];?></td>
                        <td class="text-primary align-middle"><?= $r['KET_TYPE_CASO']; ?></td>
                        <td class="text-primary align-middle border-end border-dark"><?= $r['KET_RESUMEN']; ?></td>
                        <td class="text-primary align-middle"><?= $r['KET_OPERACIONES1']; ?></td>
                        <td class="text-primary align-middle"><?= $r['KET_OPERACIONES2']; ?></td>
                        <td class="text-primary align-middle border-end border-dark"><?= $r['KET_OPERACIONES3']; ?></td>
                        <td class="text-primary align-middle"><?= $r['KET_PRODUCTO1']; ?></td>
                        <td class="text-primary align-middle"><?= $r['KET_PRODUCTO2']; ?></td>
                        <td class="text-primary align-middle border-end border-dark"><?= $r['KET_PRODUCTO3']; ?></td>
                        <td style="width: 6%;">
                            <a role="button" class="d-none d-sm-inline-block btn btn-primary btn-sm icon-t" data-bs-toggle="modal" href="#edit<?= $r['KET_ID']?>">
                                <i class="fas fa-user-pen fa-sm text-white" ></i> Editar
                            </a>
                        </td>
                        <td style="width: 6%;">
                            <a role="button" class="d-none d-sm-inline-block btn btn-secondary btn-sm icon-t" data-bs-toggle="modal" href="#delete<?= $r['KET_ID']?>">
                                <i class="fas fa-trash-alt fa-sm text-white" ></i> Eliminar
                            </a>
                        </td>
                        <?php include ('../modals/tipificaciones/edit.php')?> 
                        <?php include ('../modals/tipificaciones/delete.php')?>     
                    </tr>
                    <?php } } ?>
                    <caption>Listado del Catalogo de Servicio</caption>
                </tbody>
            </table>            
        </div>
    </div>
</div>
<?php } if(!isset($_SESSION['userId']) || $_SESSION['typeId'] == 2){?>
    <div class="card shadow">
    <div class="card-header text-uppercase">
        <p class="h3 titulo obj" id="card">TIPIFICACIONES
            <strong class="h5"> Area de:
                <?php if(isset($_GET["area"])!= null){ echo $link; }else{echo ""; } ?>
            </strong> 
        </p> 
    </div>
    <div class="card-body small">
        <div class="table-responsive">
        <table class="table table-sm table-striped text-center align-middle table-borderless tabla" width="100%" cellspacing="0" id="dataTable">
                <thead class="table-light">
                    <tr>
                        <th colspan="4" rowspan="3" class="table-success h5 text-uppercase text-center align-middle">Fallas tipicas</th>
                        <th colspan="6" class="table-success h5 text-uppercase text-center">Categorias</th>
                    </tr>
                    <tr>
                        <th colspan="3" class="h5 text-uppercase text-center table-primary">Operación</th>
                        <th colspan="3" class="h5 text-uppercase text-center table-primary">Producto</th>
                    </tr>
                    <tr>
                        <th colspan="6" class="table-success h5 text-uppercase text-center">Niveles</th>
                    </tr>                       
                    <tr>
                        <th white="0.5px">id</th>
                        <th white="0.5px">N°</th>
                        <th>Caso</th>
                        <th class="">Resumen</th>
                        <th>1</th>
                        <th>2</th>
                        <th>3</th>
                        <th>1</th>
                        <th>2</th>
                        <th>3</th>
                    </tr>
                </thead>
                <tbody class="table-group-divider">
                    <tr>
                        <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else { foreach ($result as $r) { ?>
                        <th class="text-primary align-middle " white="0.5px"><?= $r['KET_ID']?></th>
                        <td class="text-primary align-middle" white="0.5px" ><?= $r['KET_ORDER'];?></td>
                        <td class="text-primary align-middle"><?= $r['KET_TYPE_CASO']; ?></td>
                        <td class="text-primary align-middle border-end border-dark"><?= $r['KET_RESUMEN']; ?></td>
                        <td class="text-primary align-middle"><?= $r['KET_OPERACIONES1']; ?></td>
                        <td class="text-primary align-middle"><?= $r['KET_OPERACIONES2']; ?></td>
                        <td class="text-primary align-middle border-end border-dark"><?= $r['KET_OPERACIONES3']; ?></td>
                        <td class="text-primary align-middle"><?= $r['KET_PRODUCTO1']; ?></td>
                        <td class="text-primary align-middle"><?= $r['KET_PRODUCTO2']; ?></td>
                        <td class="text-primary align-middle border-end border-dark"><?= $r['KET_PRODUCTO3']; ?></td>     
                    </tr>
                    <?php } } ?>
                    <caption>Listado del Catalogo de Servicio</caption>
                </tbody>
            </table>            
        </div>
    </div>
</div>
<?php }?>