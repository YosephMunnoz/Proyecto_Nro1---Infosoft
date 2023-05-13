<?php { 
    include("../conexion/catalogo_filtros.php");
?>
<!-- Begin Page Content -->
<div class="container-fluid">

   <!--  <div class="row mb-3">
        <div class="col-10">
            <a href="#" class="d-none d-sm-inline-block btn btn-sm text-white" style="background: #850404;" data-bs-toggle="modal" data-bs-target="#registerDonationModal">
                <i class="fas fa-user-group fa-sm text-white" ></i> Register Donors
            </a>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm text-white" style="background: #850404;" data-bs-toggle="modal" data-bs-target="#newDonationModal">
                <i class="fas fa-heart-circle-plus fa-sm text-white" ></i> New Donation
            </a>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm text-white" style="background: #850404;"  data-bs-toggle="modal" data-bs-target="#DonorMedicalHistoryModal">
                <i class="fas fa-file-medical fa-sm text-white" ></i> Donor Medical History
            </a>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm text-white" style="background: #850404;"  data-bs-toggle="modal" data-bs-target="#MedicalExamModal">
                <i class="fas fa-stethoscope fa-sm text-white" ></i> Medical Exam
            </a>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm text-white" style="background: #850404;"  data-bs-toggle="modal" data-bs-target="#registerExtractionModal">
                <i class="fas fa-dna fa-sm text-white" ></i> Register Extraction
            </a>
        </div>
        <div class="col-2">
            <a href="#" class="d-none d-sm-inline-block btn btn-sm text-white float-end" style="background: #C59849;" data-bs-toggle="modal" data-bs-target="#settingsDonorsModal">
                <i class="fas fa-screwdriver-wrench fa-sm text-white" ></i> Settings
            </a>
        </div>
    </div> -->

    <!-- DataTales -->
    <div class="card shadow">
        <!-- <div class="card-header">
            <h3>asdasdas</h3>
        </div> -->
        <div class="card-body small">
            <div class="table-responsive">
            <table class="table table-sm table-hover table-striped text-center align-middle table-borderless display compact" width="100%" cellspacing="0" id="dataTable">
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
                                                <th class="text-primary" white="0.5px"><?= $r['id']?></th>
                                                <td scope="col" class="table-danger text-primary" white="4px" id="colors"><?= $r['nivel_criticidad']; ?></td>
                                                <td class="text-primary"><?= $r['servidor']; ?></td>
                                                <td class="text-primary"><?= $r['hostname']; ?></td>
                                                <td class="text-primary"><?= $r['ip']; ?></td>
                                                <td class="text-primary"><?= $r['bbdd']; ?></td>
                                                <td class="text-primary"><?= $r['bus']; ?></td>
                                                <td class="text-primary"><?= $r['capa_tuxedo']; ?></td>
                                                <td class="text-primary"><?= $r['weblogic']; ?></td>
                                                <td class="text-primary"><?= $r['ubicacion']; ?></td>
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
                                            <?php } } }?>
                                            <caption>Listado del Catalogo de Servicio</caption>
                                        </tbody>
                                        <tfoot class="fw-bold">
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
                                        </tfoot>
                                    </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->