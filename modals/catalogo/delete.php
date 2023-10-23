<div class="modal fade" id="delete<?= $r['id']?>" tabindex="-1" aria-labelledby="delete_label" aria-hidden="true">
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
                        <input class="fs-5 form-control-plaintext" readonly  value="<?= $r['id']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="criticidad" class="fs-5 col-sm-3 col-form-label"><strong>Criticidad:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['nivel_criticidad']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="servicioAsociado" class="fs-5 col-sm-3 col-form-label"><strong>Servicio Asociado:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['servicio_asociado']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="canalAplicativo" class="fs-5 col-sm-3 col-form-label"><strong>Canal Aplicativo:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['canal_aplicativo']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="servidor" class="fs-5 col-sm-3 col-form-label"><strong>Servidor:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly  value="<?= $r['servidor']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="hostname" class="fs-5 col-sm-3 col-form-label"><strong>Nombre:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['hostname']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="ip" class="fs-5 col-sm-3 col-form-label"><strong>IP:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['ip']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="bbdd" class="fs-5 col-sm-3 col-form-label"><strong>BBDD:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['bbdd']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="bus" class="fs-5 col-sm-3 col-form-label"><strong>Bus:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['bus']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="capaTuxedo" class="fs-5 col-sm-3 col-form-label"><strong>Capa Tuxedo:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['capa_tuxedo']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="weblogic" class="fs-5 col-sm-3 col-form-label"><strong>Weblogic:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['weblogic']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="ubicacion" class="fs-5 col-sm-3 col-form-label"><strong>ubicación:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['ubicacion']?>">
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="hidden" name="canal" value="<?= $_GET["canal"]?>">
                    <input type="hidden" name="servicio" value="<?= $_GET["servicio"]?>">
                    <input type="hidden" id="id" name="id" value="<?= $r['id']?>">
                    <input type="hidden" name="regis" value="delete">
                    <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Cancel</button>
                    <button class="btn btn-primary" type="submit">Eliminar</button>
                </div>
            </form>
        </div>
    </div>
</div>