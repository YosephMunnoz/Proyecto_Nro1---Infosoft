<!-- Modal -->
<div class="modal fade" id="new_archivo" tabindex="-1" aria-labelledby="new_archivo" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered small">
        <div class="modal-content">
            <form method="POST" action="../../../Infosoft3/conexion/pbo/formDocumentos.php" name="form-regisDocumentos" enctype="multipart/form-data">
                <div class="modal-header btn-light">
                    <h5 class="modal-title fw-bold titulo-modal" id="new_archivo">Subir Nuevo Archivo:
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row g-1">
                        <div class="mb-2 col-12">
                            <input type="number" class="yearpicker form-control" value="" name="periodo" id="periodo" placeholder="Seleccione un año" required/>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="mb-2 col-12">
                            <label for="name" class="titulo-modal ">Nombre:</label>
                            <input type="text" name="name" id="name" class="form-control" placeholder="Ejemplo: Documento" required>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="mb-2 col-12">
                            <label for="descripcion" class="form-label">Descripción:</label>
                            <textarea class="form-control" id="descripcion" rows="3" name="descripcion" placeholder="Escriba una descripción del documento a subir"></textarea>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="mb-2 col-12">
                            <label for="formFile" class="form-label">Seleccione un Archivo:</label>
                            <input class="form-control" type="file" id="formFile" name="file" required>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="hidden" name="regis" value="insert" />
                    <input type="hidden" name="id" value="" />
                    <button class="btn btn-secondary btn-sm" type="button" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-outline-primary" value="0">Guardar</button>
                </div>
            </form>
        </div>
  </div>
</div>