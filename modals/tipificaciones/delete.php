<div class="modal fade" id="delete<?= $r['KET_ID']?>" tabindex="-1" aria-labelledby="delete_label" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="delete">¿Desea Eliminar este registro?</h5>
                <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <form method="POST" action="../../../Infosoft3/conexion/tipificaciones/formTipificaciones.php" name="form-deleteInventario">
                <div class="ms-2 row justify-content-start">
                    <label for="id" class="fs-5 col-sm-3 col-form-label"><strong>Id:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly  value="<?= $r['KET_ID']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="area" class="fs-5 col-sm-3 col-form-label"><strong>Area:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KET_AREA']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="caso" class="fs-5 col-sm-3 col-form-label"><strong>Tipo de Caso:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KET_TYPE_CASO']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="resumen" class="fs-5 col-sm-3 col-form-label"><strong>Resumen:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KET_RESUMEN']?>">
                    </div>
                </div>
                <div class="row g-1 mt-2 ">
                    <div class="col-12 text-center">
                        <span class="fs-4 "><strong>Operaciones</strong></span>
                    </div>
                </div>
                <hr class="sidebar-divider bg-dark">
                <div class="ms-2 row justify-content-start">
                    <label for="op1" class="fs-5 col-sm-3 col-form-label"><strong>Nivel 1:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly  value="<?= $r['KET_OPERACIONES1']?>">
                    </div>
                </div>
                
                <div class="ms-2 row justify-content-start">
                    <label for="op2" class="fs-5 col-sm-3 col-form-label"><strong>Nivel 2:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KET_OPERACIONES2']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="op3" class="fs-5 col-sm-3 col-form-label"><strong>Nivel 3:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KET_OPERACIONES3']?>">
                    </div>
                </div>
                <div class="row g-1 mt-2 ">
                    <div class="col-12 text-center">
                        <span class="fs-4 "><strong>Producto</strong></span>
                    </div>
                </div>
                <hr class="sidebar-divider bg-dark">
                <div class="ms-2 row justify-content-start">
                    <label for="pr1" class="fs-5 col-sm-3 col-form-label"><strong>Nivel 1:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KET_PRODUCTO1']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="pr2" class="fs-5 col-sm-3 col-form-label"><strong>Nivel 2:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KET_PRODUCTO2']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="pr3" class="fs-5 col-sm-3 col-form-label"><strong>Nivel 3:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KET_PRODUCTO3']?>">
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="hidden" id="value" name="value" value="<?= $_GET['value']?>">
                    <input type="hidden" id="area" name="area" value="<?= $_GET['area']?>">
                    <input type="hidden" id="opcion" name="opcion" value="<?= $_GET['tipificaciones']?>">
                    <input type="hidden" id="id" name="id" value="<?= $r['KET_ID']?>">
                    <input type="hidden" name="regis" value="delete">
                    <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Cancel</button>
                    <button class="btn btn-primary" type="submit">Eliminar</button>
                </div>
            </form>
        </div>
    </div>
</div>