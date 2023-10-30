<div class="modal fade" id="delete<?= $r['KECS_ID']?>" tabindex="-1" aria-labelledby="delete_label" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="delete">¿Desea Eliminar este registro?</h5>
                <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <form method="POST" action="../../../Infosoft3/conexion/formCatalogo.php" name="form-editCatalogo">
                <div class="ms-2 row justify-content-start">
                    <label for="id" class="fs-5 col-sm-3 col-form-label"><strong>Id:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly  value="<?= $r['KECS_ID']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="criticidad" class="fs-5 col-sm-3 col-form-label"><strong>Criticidad:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KENC_CRITICAL_LEVEL']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="servicioAsociado" class="fs-5 col-sm-3 col-form-label"><strong>Servicio Asociado:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KESA_SERVICE']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="canalAplicativo" class="fs-5 col-sm-3 col-form-label"><strong>Canal Aplicativo:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KECA_CHANNEL']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="servidor" class="fs-5 col-sm-3 col-form-label"><strong>Servidor:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly  value="<?= $r['KESRV_SERVER']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="hostname" class="fs-5 col-sm-3 col-form-label"><strong>Nombre:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KEHN_HOSTNAME']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="ip" class="fs-5 col-sm-3 col-form-label"><strong>IP:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KEIP_IP']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="bbdd" class="fs-5 col-sm-3 col-form-label"><strong>BBDD:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KEIDB_INSTANCE']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="bus" class="fs-5 col-sm-3 col-form-label"><strong>Bus:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KEB_BUS']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="capaTuxedo" class="fs-5 col-sm-3 col-form-label"><strong>Capa Tuxedo:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KECT_CAPA_TUXEDO']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="weblogic" class="fs-5 col-sm-3 col-form-label"><strong>Weblogic:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KEW_WEBLOGIC']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="ubicacion" class="fs-5 col-sm-3 col-form-label"><strong>ubicación:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['KEU_LOCATION']?>">
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="hidden" name="canal" value="<?= $_GET["canal"]?>">
                    <input type="hidden" name="servicio" value="<?= $_GET["servicio"]?>">
                    <input type="hidden" id="id" name="id" value="<?= $r['KECS_ID']?>">
                    <input type="hidden" name="regis" value="delete">
                    <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Cancel</button>
                    <button class="btn btn-primary" type="submit">Eliminar</button>
                </div>
            </form>
        </div>
    </div>
</div>