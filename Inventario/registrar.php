<div class="container">
    <div class="card shadow mt-5 scroll">
        <div class="card-header h3 titulo">
            Nuevos registros para el Inventario CCO
        </div>
        <div class="card-body">
            <form method="POST" action="../../../Infosoft3/conexion/inventario/formInvetario.php" name="form-editInventario">
                <div class="row g-2">
                    <div class="mb-2 col-2">
                        <label for="nivel_criticidad" class="titulo-modal ">Nivel de Criticidad</label>
                        <input type="text" name="nivel_criticidad" class="form-control form-control-sm text-center" id="input_nivel_criticidad">
                    </div>
                    <div class="mb-2 col-10">
                        <label for="servicio" class="titulo-modal">Servicio</label>
                        <input type="text" name="servicio" class="form-control form-control-sm text-center">
                    </div>
                </div>
                <div class="row g-1">
                    <div class="mb-2 col-12">
                        <label for="canales" class="titulo-modal">Canales</label>
                        <input type="text" name="canales" class="form-control form-control-sm text-center">
                    </div>
                </div>
                <div class="row g-1">
                    <div class="mb-2 col-12">
                        <label for="aplicativo" class="titulo-modal">Aplicativo</label>
                        <input type="text" name="aplicativo" class="form-control form-control-sm text-center">
                    </div>
                </div>
                <div class="row g-2">
                    <div class="mb-2 col-6">
                        <label for="tipo" class="titulo-modal">Tipo</label>
                        <input type="text" name="tipo" class="form-control form-control-sm text-center">
                    </div>
                    <div class="mb-2 col-6">
                        <label for="entorno" class="titulo-modal">Entorno</label>
                        <input type="text" name="entorno" class="form-control form-control-sm text-center">
                    </div>
                </div>
                <div class="row g-2">
                    <div class="mb-2 col-6">
                        <label for="umas" class="titulo-modal">UMAS</label>
                        <input type="text" name="umas" class="form-control form-control-sm text-center">
                    </div>
                    <div class="mb-2 col-6">
                        <label for="cluster_hypervisor" class="titulo-modal">Cluster de Hypervisor</label>
                        <input type="text" name="cluster_hypervisor" class="form-control form-control-sm text-center">
                    </div>
                </div>

                <div class="row g-2">
                    <div class="mb-2 col-6">
                        <label for="servidor_fisico" class="titulo-modal">Servidor Fìsico</label>
                        <input type="text" name="servidor_fisico" class="form-control form-control-sm text-center">
                    </div>
                    <div class="mb-2 col-6">
                        <label for="servidor_virtual" class="titulo-modal">Servidor Virtual</label>
                        <input type="text" name="servidor_virtual" class="form-control form-control-sm text-center">
                    </div>
                </div>
                <div class="row g-2">
                    <div class="mb-2 col-6">

                        <input type="hidden" name="conciliacion_seguridad" class="form-control form-control-sm text-center pequeño">
                    </div>
                    <div class="mb-2 col-6">
                        <input type="hidden" name="estatus_seguridad" class="form-control form-control-sm text-center">
                    </div>
                </div>

                <div class="row g-3">
                    <div class="mb-2 col-4">
                        <label for="ubicacion" class="titulo-modal">Ubicación</label><span class="text-muted"> (Edificio)</span>
                        <input type="text" name="ubicacion" class="form-control form-control-sm text-center">
                    </div>
                    <div class="mb-2 col-4">
                        <label for="rack" class="titulo-modal">Rack</label><span class="text-muted"> (Actual)</span>
                        <input type="text" name="rack" class="form-control form-control-sm text-center">
                    </div>
                    <div class="mb-2 col-4">
                        <label for="fila" class="titulo-modal">Fila</label>
                        <input type="text" name="fila" class="form-control form-control-sm text-center pequeño">
                    </div>
                </div>

                <div class="row g-1">
                    <div class="mb-2 col-12">
                        <label for="direcciones_ip" class="titulo-modal">Direcciones IP</label>
                        <input type="text" name="direcciones_ip" class="form-control form-control-sm text-center">
                    </div>
                </div>

                <div class="row g-2">
                    <div class="mb-2 col-6">
                        <label for="serial" class="titulo-modal">Serial</label>
                        <input type="text" name="serial" class="form-control form-control-sm text-center">
                    </div>
                    <div class="mb-2 col-6">
                        <label for="activo_fijo" class="titulo-modal">Activo Fijo</label>
                        <input type="text" name="activo_fijo" class="form-control form-control-sm text-center">
                    </div>
                </div>

                <div class="row g-2">
                    <div class="mb-2 col-4">
                        <label for="marca" class="titulo-modal">Marca</label>
                        <input type="text" name="marca" class="form-control form-control-sm text-center pequeño">
                    </div>
                    <div class="mb-2 col-8">
                        <label for="modelo" class="titulo-modal">Modelo</label>
                        <input type="text" name="modelo" class="form-control form-control-sm text-center">
                    </div>
                </div>

                <div class="row g-4">
                    <div class="mb-2 col-3">
                        <label for="fin_soporte" class="titulo-modal">Fin del Soporte</label><span class="text-muted"> (Técnico)</span>
                        <input type="text" name="fin_soporte" class="form-control form-control-sm text-center">
                    </div>
                    <div class="mb-2 col-3">
                        <label for="socket" class="titulo-modal">sockets</label><span class="text-muted"> (Procesadores físicos)</span>
                        <input type="text" name="socket" class="form-control form-control-sm text-center">
                    </div>
                    <div class="mb-2 col-3">
                        <label for="cores" class="titulo-modal">Cores</label><span class="text-muted"> (Total)</span>
                        <input type="text" name="cores" class="form-control form-control-sm text-center">
                    </div>
                    <div class="mb-2 col-3">
                        <label for="ram_gb" class="titulo-modal">Memoria Ram</label><span class="text-muted"> (GB)</span>
                        <input type="text" name="ram_gb" class="form-control form-control-sm text-center">
                    </div>
                </div>

                <div class="row g-2">
                    <div class="mb-2 col-3">
                        <label for="sistema_operativo" class="titulo-modal">Sistema Operativo</label>
                        <input type="text" name="sistema_operativo" class="form-control form-control-sm text-center">
                    </div>
                    <div class="mb-2 col-9">
                        <label for="version_sistema_operativo" class="titulo-modal">Versión del Sistema Operativo</label>
                        <input type="text" name="version_sistema_operativo" class="form-control form-control-sm text-center">
                    </div>
                </div>

                <div class="row g-3">
                    <div class="mb-2 col-4">
                        <label for="instancia_bd" class="titulo-modal">Instancia de Base de Datos</label>
                        <input type="text" name="instancia_bd" class="form-control form-control-sm text-center">
                    </div>
                    <div class="mb-2 col-4">
                        <label for="tipo_bd" class="titulo-modal">Manejador de Base de Datos</label>
                        <input type="text" name="tipo_bd" class="form-control form-control-sm text-center">
                    </div>
                    <div class="mb-2 col-4">
                        <label for="vs_bd" class="titulo-modal">Versión de Base de Datos</label>
                        <input type="text" name="vs_bd" class="form-control form-control-sm text-center">
                    </div>
                </div>
                <div class="modal-footer">
                <input type="hidden" name="inventario" value="<?= $_GET["inventario"] ?>">
                        <input type="hidden" id="nombre" name="nombre" value="0">
                        <input type="hidden" id="value" name="value" value="0">
                        <input type="hidden" id="servidor" name="servidor" value="0">
                        <input type="hidden" id="id" name="id" value="0">
                    <input type="hidden" name="regis" value="insert">
                    <button class="btn btn-secondary btn-sm" type="button" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-outline-primary">Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>