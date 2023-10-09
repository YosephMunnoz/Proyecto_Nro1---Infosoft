<?php
include '../conexion/queryRegister.php';
?>
<div class="container">
    <div class="card shadow">
      <div class="card-header h3 titulo">
        Creación de Cargos
      </div>
      <div class="card-body">
        <form method="POST" action="../conexion/register.php" name="form-perfilCharge">
          <div class="row g-2">
              <div class="mb-2 col-6">
                  <label for="name" class="titulo-modal">Cargo:</label>
                  <input type="text" name="charge" id="charge" class="form-control form-control-sm" placeholder="Ejemplo: Consultor" required>
              </div>
              <div class="mb-2 col-6 align-self-end">
                <input type="hidden" name="regis" value="2">
                <button type="submit" class="btn btn-primary">Registrar</button>
              </div>
          </div>   
        </form>
      </div>
    </div>
</div>

<div class="container mt-2">
  <div class="card shadow">
      <div class="card-header">
          <div class="h3 titulo">
            Listado de Cargos:
          </div>
      </div>
      <div class="card-body small">
          <div class="table-responsive">
              <table class="table table-sm table-hover text-center align-middle table-borderless fs-5 small" width="100%" cellspacing="0">
              <thead class="table-primary">
                  <tr>
                      <th white="0.5px">Cargo Id</th>
                      <th>Cargo</th>
                      <th>Editar</th>
                      <th>Eliminar</th>
                  </tr>
              </thead>
              <tbody class="table-group-divider" data-bs-spy="scroll">
                  <tr>
                      <?php  if($num1 == 0 ) { echo "No existen Datos Actualmente!"; } else { foreach ($query1 as $r) { ?>
                      <th class="text-primary align-middle" white="0.5px"><?= $r['KEC_ID']?></th>
                      <td scope="col" class="text-primary align-middle"><?= $r['KEC_CHARGE'];?></td>
                      <td style="width: 30%;">
                      <a role="button" class="d-none d-inline-block btn btn-outline-warning icon-t" data-bs-toggle="modal" href="#editCharge<?= $r['KEC_ID']?>">
                      <i class="fas fa-plus fs-6"></i><strong class="ms-3 fs-6"> Editar</strong>
                      </a>
                      </td>
                      <td style="width: 30%;">
                        <a role="button" class="d-none d-inline-block btn btn-outline-primary icon-t" data-bs-toggle="modal" href="#deleteCharge<?= $r['KEC_ID'];?>">
                          <i class="fas fa-user-pen fs-6"></i><strong class="ms-3 fs-6 "> Eliminar</strong>
                        </a>
                      </td>
                      <?php include ('../modals/users/editCharge.php');
                            include ('../modals/users/deleteCharge.php');
                      ?>   
                  </tr>
                  <?php } } ?>
                  <caption>Listado de cargos</caption>
              </tbody>
              </table>
          </div>
      </div>
  </div>
</div>
