<div class="modal fade"  id="editUser<?= $r['KEU_ID']?>" tabindex="-1" role="dialog" aria-labelledby="editUser" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editUser">Modificar Datos de Usuario</h5>
                <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <form method="POST" action="../conexion/register.php" name="form-editUser">
                <div class="row g-2 justify-content-around">
                    <div class="mb-2 col-5">
                        <label for="userName" class="titulo-modal "><strong>Nombre:</strong></label>
                        <input type="text" class="form-control text-center" aria-label="Disabled input" id="userName" name="name" placeholder="<?= $r['KEU_NAME']?>" required >
                    </div>
                    <div class="mb-2 col-5">
                        <label for="userLastName" class="titulo-modal"><strong>Apellido:</strong></label>
                        <input type="text" class="form-control text-center" aria-label="Disabled input"   id="userLastName" name="lastName" placeholder="<?= $r['KEU_LASTNAME']?>" required>
                    </div>
                </div>
                <div class="row g-2 justify-content-around">
                    <div class="mb-2 col-5">
                        <label for="CI" class="titulo-modal "><strong>Número de cédula:</strong></label>
                        <input type="text" class="form-control text-center" aria-label="Disabled input" id="CI" name="CI" placeholder="<?= $r['KEU_DOCUMENT']?>" required >
                    </div>
                    <div class="mb-2 col-5">
                        <label for="user" class="titulo-modal"><strong>Usuario:</strong></label>
                        <input type="text" class="form-control text-center" aria-label="Disabled input" id="user" name="user" placeholder="<?= $r['KEU_USER']?>" required>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="mb-2 col-11">
                        <label for="email" class="titulo-modal "><strong>Email:</strong></label>
                        <input type="text" class="form-control text-center" aria-label="Disabled input" id="email" name="email" placeholder="<?= $r['KEU_EMAIL']?>" required >
                    </div>
                </div>
                <div class="row g-3 justify-content-around">
                    <div class="mb-2 col-3">
                        <label for="charge" class="titulo-modal form-label"><strong>Charge:</strong></label>
                        <select name="charge" id="charge" class="form-select" required>
                            <option value="">Elegir...</option>
                                <?php foreach($query1 as $q) { ?>
                            <option value="<?= $q['KEC_ID']?>"><?= $q['KEC_CHARGE'];?></option>
                                <?php } ?>
                        </select>
                    </div>
                    <div class="mb-2 col-3">
                        <label for="typeUser" class="titulo-modal "><strong>Tipo:</strong></label>
                        <select name="type" id="typeUser" class="form-select" required>
                            <option value="">Elegir...</option>
                                <?php foreach($query2 as $q) { ?>
                            <option value="<?= $q['KETU_ID']?>"><?= $q['KETU_TYPE_USER'];?></option>
                                <?php } ?>
                        </select>
                    </div>
                    <div class="mb-2 col-3">
                        <label for="status" class="titulo-modal "><strong>Estatus:</strong></label>
                        <select name="status" id="status" class="form-select" required>
                            <option value="">Elegir...</option>
                                <?php foreach($query3 as $q) { ?>
                            <option value="<?= $q['KES_ID']?>"><?= $q['KES_STATUS'];?></option>
                                <?php } ?>
                        </select>
                    </div>
                </div>                    
                <div class="modal-footer">
                    <input type="hidden" id="chargeId" name="id" value="<?= $r['KEU_ID']?>">
                    <input type="hidden" name="regis" value="5">
                    <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Cancel</button>
                    <button class="btn btn-primary" type="submit">Actualizar</button>
                </div>
            </form>
        </div>
    </div>
</div>