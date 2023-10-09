<?php
include '../conexion/queryRegister.php';
?>
<div class="container-fluid mt-2">
  <div class="card shadow">
      <div class="card-header">
          <div class="h3 titulo">
            Listado de Usuarios:
          </div>
      </div>
      <div class="card-body small">
          <div class="table-responsive">
              <table class="table table-sm table-hover text-center align-middle table-borderless fs-5 small" width="100%" cellspacing="0">
              <thead class="table-primary">
                  <tr>
                      <th white="0.5px">Id</th>
                      <th>Nombre</th>
                      <th>Apellido</th>
                      <th>Email</th>
                      <th>Cargo</th>
                      <th>Tipo</th>
                      <th>Estatus</th>
                      <th>Editar</th>
                      <th>Eliminar</th>
                  </tr>
              </thead>
              <tbody class="table-group-divider" data-bs-spy="scroll">
                  <tr>
                      <?php  if($num2 == 0 ) { echo "No existen Datos Actualmente!"; } else { foreach ($query4 as $r) { ?>
                      <th class="text-primary align-middle" white="0.5px"><?= $r['KEU_ID']?></th>
                      <td scope="col" class="text-primary align-middle"><?= $r['KEU_NAME'];?></td>
                      <td scope="col" class="text-primary align-middle"><?= $r['KEU_LASTNAME'];?></td>
                      <td scope="col" class="text-primary align-middle"><?= $r['KEU_EMAIL'];?></td>
                      <td scope="col" class="text-primary align-middle"><?= $r['CHARGE'];?></td>
                      <td scope="col" class="text-primary align-middle"><?= $r['TYPE'];?></td>
                      <td scope="col" class="text-primary align-middle"><?= $r['STATUS'];?></td>
                      <td style="width: 12%;">
                      <a role="button" class="d-none d-inline-block btn btn-outline-warning icon-t" data-bs-toggle="modal" href="#editUser<?= $r['KEU_ID']?>">
                      <i class="fas fa-plus fs-6"></i><strong class="ms-3 fs-6"> Editar</strong>
                      </a>
                      </td>
                      <td style="width: 12%;">
                        <a role="button" class="d-none d-inline-block btn btn-outline-primary icon-t" data-bs-toggle="modal" href="#deleteUser<?= $r['KEU_ID'];?>">
                          <i class="fas fa-user-pen fs-6"></i><strong class="ms-3 fs-6 "> Eliminar</strong>
                        </a>
                      </td>
                      <?php include ('../modals/users/editUser.php');
                            include ('../modals/users/deleteUser.php');
                      ?>   
                  </tr>
                  <?php } } ?>
                  <caption>Listado de usuarios</caption>
              </tbody>
              </table>
          </div>
      </div>
  </div>
</div>