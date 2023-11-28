<div class="container-fluid">
    <?php  if(isset($_SESSION['userId']) && $_SESSION['typeId'] == 1) { include ('../modals/documentos/carga.php') ?>
        <button type="button" class="btn btn-primary mb-2" data-bs-toggle="modal" data-bs-target="#new_archivo">Nuevo</button>
    <?php }?>
    <div class="table-responsive mt-2">
        <table class="table table-sm table-striped text-center align-middle table-bordered" width="100%">
            <thead class="table-light border-bottom-dark">
                <tr>
                    <th white="0.5px">#</th>
                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Ver</th>
                    <?php  if(isset($_SESSION['userId']) && $_SESSION['typeId'] == 1) { echo ('<th>Delete</th>');} ?>
                </tr>
            </thead>
            <tbody class="table-group-divider ">
                <tr>
                    <?php  if(isset($_GET["value"]) == null){ echo "No existen Datos Actualmente!"; }else { foreach ($result0 as $r) { ?>
                    <th class="text-primary align-middle " white="0.5px"><?= $r['KEF_ID']?></th>
                    <td class="text-primary align-middle"><?= $r['KEF_NAME'];?></td>
                    <td class="text-primary align-middle"><?= $r['KEF_DESCRIPTION'];?></td>
                    <td style="width: 10%;">
                        <a role="button" class="d-none d-inline-block btn btn-primary" target="_blank" href="visor.php?id=<?= $r['KEF_ID']?>">
                            <i class="fas fa-user-pen text-white" ></i> Ver
                        </a>
                    </td>
                    <?php  if(isset($_SESSION['userId']) && $_SESSION['typeId'] == 1) { 
                        echo (
                            '<td style="width: 12%;">
                        <form method="POST" action="../../../Infosoft3/conexion/Documentos/formDocumentos.php" name="form-DeleteDocumentos" enctype="multipart/form-data">
                            <input type="hidden" id="ruta" name="ruta" value="<?= '.$r['KEF_PATCH'].'?>">
                            <input type="hidden" name="id" value="<?= '.$r['KEF_ID'].'?>">
                            <input type="hidden" id="value" name="value" value="0">
                            <input type="hidden" id="area" name="area" value="<?= $area ?>">
                            <input type="hidden" name="regis" value="delete">
                            <button type="submit" class="d-inline-block btn btn-secondary">
                                <i class="fas fa-trash-alt text-white" ></i> Eliminar
                            </button>
                        </form>
                        </td>'
                        );} ?>
                </tr>
                <?php } } ?>
                <caption>Listado de Documentos</caption>
            </tbody>
        </table>
    </div>
</div>
