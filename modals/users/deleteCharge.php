<div class="modal fade"  id="deleteCharge<?= $r['KEC_ID']?>" tabindex="-1" role="dialog" aria-labelledby="deleteCharge" aria-hidden="true">
    <div class="modal-dialog" role="dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteCharge">¿Desea Eliminar este registro?</h5>
                <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <form method="POST" action="../conexion/register.php" name="form-registerUser">
                <div class="mb-2 mt-4 row justify-content-center">
                    <label for="chargeId" class="fs-5 col-sm-2 col-form-label"><strong>Cargo:</strong></label>
                    <div class="col-sm-6">
                        <input class="fs-5 form-control-plaintext" readonly  id="chargeId" name="charge" value="<?= $r['KEC_CHARGE']?>">
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Cancel</button>
                    <input type="hidden" name="regis" value="4">
                    <button class="btn btn-primary" type="submit">Eliminar</button>
                </div>
            </form>
        </div>
    </div>
</div>