<div class="modal fade" id="delete<?= $r['id_codigo']?>" tabindex="-1" aria-labelledby="delete_label" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="delete">¿Desea Eliminar este registro?</h5>
                <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <form method="POST" action="../../../Infosoft3/conexion/inventario/formInvetario.php" name="form-deleteInventario">
                <div class="ms-2 row justify-content-start">
                    <label for="id" class="fs-5 col-sm-3 col-form-label"><strong>Id:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly  value="<?= $r['id_codigo']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="criticidad" class="fs-5 col-sm-3 col-form-label"><strong>Criticidad:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['criticidad']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="servicioAsociado" class="fs-5 col-sm-3 col-form-label"><strong>Servicio Asociado:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['servicio']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="canalAplicativo" class="fs-5 col-sm-3 col-form-label"><strong>Cluster:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['cluster_hypervisor']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="servidor" class="fs-5 col-sm-3 col-form-label"><strong>Servidor Fisico:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly  value="<?= $r['servidor_fisico']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="hostname" class="fs-5 col-sm-3 col-form-label"><strong>Servidor Virtual:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['servidor_virtual']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="ip" class="fs-5 col-sm-3 col-form-label"><strong>IP:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['direcciones_ip']?>">
                    </div>
                </div>
                <div class="ms-2 row justify-content-start">
                    <label for="ubicacion" class="fs-5 col-sm-3 col-form-label"><strong>ubicación:</strong></label>
                    <div class="col-sm-9">
                        <input class="fs-5 form-control-plaintext" readonly value="<?= $r['ubicacion']?>">
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="hidden" name="inventario" value="<?= $_GET["inventario"]?>">
                    <input type="hidden" id="nombre" name="nombre" value="<?= $_GET['nombre']?>">
                    <input type="hidden" id="value" name="value" value="<?= $_GET['value']?>">
                    <input type="hidden" id="servidor" name="servidor" value="<?= $_GET['servidor']?>">
                    <input type="hidden" id="entorno" name="entorno" value="<?= $_GET['entorno']?>">
                    <input type="hidden" id="tipo" name="tipo" value="<?= $_GET['tipo']?>">
                    <input type="hidden" id="id" name="id" value="<?= $r['id_codigo']?>">
                    <input type="hidden" name="regis" value="delete">
                    <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Cancel</button>
                    <button class="btn btn-primary" type="submit">Eliminar</button>
                </div>
            </form>
        </div>
    </div>
</div>