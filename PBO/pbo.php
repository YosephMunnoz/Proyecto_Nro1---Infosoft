<?php include '../conexion/Pbo/documentosFiltros.php'; ?>
<div class="container-fluid">
    <?php if (isset($_SESSION['userId']) && $_SESSION['typeId'] == 1) {
        include('../modals/pbo/carga.php') ?>
        <div class="row g-2">
            <div class="d-flex justify-content-start col-6">
                <button type="button" class="btn btn-primary mb-2 " data-bs-toggle="modal" data-bs-target="#new_archivo">Nuevo</button>
            </div>
            <div class="d-flex justify-content-end col-6">
                <select class="form-select mb-2 col-4" id="buscadorPBO" onclick="buscar()">
                    <option value="">Elegir...</option>
                    <?php foreach ($result1 as $r) {?>
                    <option value="<?= $r['KEP_PERIOD']?>"><?= $r['KEP_PERIOD']?></option>
                    <?php }?>
                </select>
            </div>
        </div>
    <?php } ?>

    <div class="table-responsive mt-2">
        <table class="table table-sm table-striped text-center align-middle table-bordered" width="100%" id="TablaPBO">
            <thead class="table-light border-bottom-dark">
                <tr>
                    <th white="0.5px">#</th>
                    <th>Año</th>
                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Ver</th>
                    <?php if (isset($_SESSION['userId']) && $_SESSION['typeId'] == 1) {
                        echo ('<th>Delete</th>');
                    } ?>
                </tr>
            </thead>
            <tbody class="table-group-divider ">
                <tr>
                    <?php if($_GET["valor"] == null || $_GET["valor"] == ""){ echo "No existen Datos Actualmente!"; } else { foreach ($result0 as $r) {  ?>
                            <th class="text-primary align-middle " white="0.5px"><?= $r['KEP_ID'] ?></th>
                            <td class="text-primary align-middle"><?= $r['KEP_PERIOD']; ?></td>
                            <td class="text-primary align-middle"><?= $r['KEP_NAME']; ?></td>
                            <td class="text-primary align-middle"><?= $r['KEP_DESCRIPTION']; ?></td>
                            <td style="width: 10%;">
                                <a role="button" class="d-none d-inline-block btn btn-primary" target="_blank" href="visor.php?id=<?= $r['KEP_ID'] ?>">
                                    <i class="fas fa-user-pen text-white"></i> Ver
                                </a>
                            </td>
                            <?php if (isset($_SESSION['userId']) && $_SESSION['typeId'] == 1) { ?>
                            <td style="width: 12%;">
                                <form method="POST" action="../../../Infosoft3/conexion/Pbo/formDocumentos.php" name="form-DeleteDocumentos" enctype="multipart/form-data">
                                    <input type="hidden" id="ruta" name="ruta" value="<?= $r['KEP_PATCH'] ?>">
                                    <input type="hidden" name="id" value="<?= $r['KEP_ID']?>">
                                    <input type="hidden" name="regis" value="delete">
                                    <button type="submit" class="d-inline-block btn btn-secondary">
                                        <i class="fas fa-trash-alt text-white" ></i> Eliminar
                                    </button>
                                </form>
                            </td>
                          <?php } ?>
                </tr>
        <?php } }?>
        <caption>Listado de Documentos</caption>
            </tbody>
        </table>
    </div>
</div>