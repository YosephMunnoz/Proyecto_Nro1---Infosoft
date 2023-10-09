<div class="modal fade"  id="editCharge<?= $r['KEC_ID']?>" tabindex="-1" role="dialog" aria-labelledby="editCharge" aria-hidden="true">
    <div class="modal-dialog" role="dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editCharge">Modificar Cargo</h5>
                <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <form method="POST" action="../conexion/register.php" name="form-editCharge">
                <div class="mb-2 mt-4 row justify-content-center">
                    <label for="chargeId" class="fs-5 col-sm-2 col-form-label"><strong>Cargo:</strong></label>
                    <div class="col-sm-6">
                        <input class="fs-5 form-control form-control-sm" type="text" id="chargeId" name="charge" placeholder="<?= $r['KEC_CHARGE']?>" required>
                        <input type="hidden" id="chargeId" name="id" value="<?= $r['KEC_ID']?>">
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="hidden" name="regis" value="3">
                    <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Cancel</button>
                    <button class="btn btn-primary" type="submit">Actualizar</button>
                </div>
            </form>
        </div>
    </div>
</div>