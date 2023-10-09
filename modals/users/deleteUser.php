<div class="modal fade"  id="deleteUser<?= $r['KEU_ID']?>" tabindex="-1" role="dialog" aria-labelledby="deleteUser" aria-hidden="true">
    <div class="modal-dialog" role="dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteUser">¿Desea Eliminar este Usuario?</h5>
                <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <form method="POST" action="../conexion/register.php" name="form-deleteUser">
                <div class="ms-2 row justify-content-start">
                    <label for="name" class="fs-5 col-sm-3 col-form-label"><strong>Nombre:</strong></label>
                    <div class="col-sm-8">
                        <input class="fs-5 form-control-plaintext" readonly  id="name" name="name" value="<?= $r['KEU_NAME']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="lastName" class="fs-5 col-sm-3 col-form-label"><strong>Apellido:</strong></label>
                    <div class="col-sm-8">
                        <input class="fs-5 form-control-plaintext" readonly  id="lastName" name="lastName" value="<?= $r['KEU_LASTNAME']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="CI" class="fs-5 col-sm-3 col-form-label"><strong>Cédula:</strong></label>
                    <div class="col-sm-8">
                        <input class="fs-5 form-control-plaintext" readonly  id="CI" name="CI" value="<?= $r['KEU_DOCUMENT']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="email" class="fs-5 col-sm-3 col-form-label"><strong>Email:</strong></label>
                    <div class="col-sm-8">
                        <input class="fs-5 form-control-plaintext" readonly  id="email" name="email" value="<?= $r['KEU_EMAIL']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="user" class="fs-5 col-sm-3 col-form-label"><strong>User:</strong></label>
                    <div class="col-sm-8">
                        <input class="fs-5 form-control-plaintext" readonly  id="user" name="user" value="<?= $r['KEU_USER']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="chargeId" class="fs-5 col-sm-3 col-form-label"><strong>Cargo:</strong></label>
                    <div class="col-sm-8">
                        <input class="fs-5 form-control-plaintext" readonly  id="chargeId" name="charge" value="<?= $r['CHARGE']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="type" class="fs-5 col-sm-3 col-form-label"><strong>Tipo:</strong></label>
                    <div class="col-sm-8">
                        <input class="fs-5 form-control-plaintext" readonly  id="chargeId" name="type" value="<?= $r['TYPE']?>">
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="hidden" id="chargeId" name="id" value="<?= $r['KEU_ID']?>">
                    <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Cancel</button>
                    <input type="hidden" name="regis" value="6">
                    <button class="btn btn-primary" type="submit">Eliminar</button>
                </div>
            </form>
        </div>
    </div>
</div>