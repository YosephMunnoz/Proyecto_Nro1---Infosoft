<?php { 
   include("../conexion/catalogo/catalogo_filtros.php");
   ?>
<!-- Begin Page Content -->
<div class="container-fluid">
   <!-- DataTales -->
   <div class="card shadow">
      <div class="card-body small">
         <div class="table-responsive">
            <table class="table table-sm table-hover table-striped text-center align-middle table-borderless display compact tabla" width="100%" cellspacing="0" id="dataTable">
               <thead class="table-light">
                  <tr>
                     <th white="0.5px">id</th>
                     <th>Criticidad</th>
                     <th>servicio</th>
                     <th>canal</th>
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
                    <td class="text-primary align-middle"><?= $r['KESA_SERVICE']; ?></td>
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
                  <?php } } }?>
                  <caption>Listado del Catalogo de Servicio</caption>
               </tbody>
            </table>
         </div>
      </div>
   </div>
</div>
