<!-- Modal -->
<div class="modal fade" id="ChangePassword_Modal" tabindex="-1" aria-labelledby="ChangePassword_Modal_Label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title titulo-modal" id="ChangePassword_Modal_Label">Cambio de contraseña</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form method="POST" action="../conexion/register.php" name="form-settingsSession">
                <div class="modal-body">
                    <div>
                        <label for="ChangePassword"  class="form-label">
                            <div class="input-group flex-nowrap">
                                <span class="input-group-text lateral">
                                    <i class="fas fa-fw fa-key text-white"></i>
                                </span>
                                <input type="password" class='form-control' id="ChangePassword" placeholder="Ingrese la contraseña" name="passwordOld" required>
                            </div>
                        </label>
                        <label for="password"  class="form-label">
                            <div class="input-group flex-nowrap pr">
                                <span class="input-group-text lateral">
                                    <i class="fas fa-fw fa-lock text-white"></i>
                                </span>
                                <input type="password" class='form-control' id="password" placeholder="Nueva contraseña" name="newPassword" required>
                            </div>
                        </label>
                        <label for="confirPass"  class="form-label">
                            <div class="input-group flex-nowrap">
                                <span class="input-group-text lateral">
                                    <i class="fas fa-fw fa-lock text-white"></i>
                                </span>
                                <input type="password" class='form-control' id="confirPass" placeholder="Confirme la contraseña" name="confirmPassword" required>
                            </div>
                        </label>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="hidden" name="regis" value="7">
                    <input type="hidden" id="chargeId" name="id" value="<?= $_SESSION['userId'] ?>">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn text-white lateral">Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>