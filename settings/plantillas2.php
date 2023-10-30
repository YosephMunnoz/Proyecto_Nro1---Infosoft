<div class="card-body">
    <div class="tab-content" id="nav-tabContent1">
        <div class="tab-pane fade show active" id="service" role="tabpanel" aria-labelledby="service-tab">
            <form class="row g-2" method="POST" action="../../../Infosoft3/conexion/settings/formPlantillas" name="form-registrarPlantillas">
                <div class="col-4">
                    <label for="servicio" class="visually-hidden">Servicio Asociado</label>
                    <input type="text" class="form-control text-uppercase" id="servicio" placeholder="Servicio Asociado">
                </div>
                <div class="col-auto">
                    <input type="hidden" name="regis" value="registrar">
                    <input type="hidden" name="tabla" value="ke_servicios_asociados">
                    <input type="hidden" name="campo" value="KESA_SERVICE">
                    <button type="submit" class="btn btn-primary mb-3">Registrar</button>
                </div>
            </form>
        </div>

        <div class="tab-pane fade" id="canal" role="tabpanel" aria-labelledby="canal-tab">
            <form class="row g-2" method="POST" action="../../../Infosoft3/conexion/settings/formPlantillas" name="form-registrarPlantillas">
                <div class="col-4">
                    <label for="servicio" class="visually-hidden">Canal Aplicativo</label>
                    <input type="text" class="form-control text-uppercase" id="canal" placeholder="Canal Aplicativo">
                </div>
                <div class="col-auto">
                    <input type="hidden" name="regis" value="registrar">
                    <input type="hidden" name="tabla" value="ke_canal_aplicativo">
                    <input type="hidden" name="campo" value="KECA_CHANNEL">
                    <button type="submit" class="btn btn-primary mb-3">Registrar</button>
                </div>
            </form>
        </div>

        <div class="tab-pane fade" id="area" role="tabpanel" aria-labelledby="area-tab">
            <form class="row g-2" method="POST" action="../../../Infosoft3/conexion/settings/formPlantillas" name="form-registrarPlantillas">
                <div class="col-4">
                    <label for="servicio" class="visually-hidden">Área</label>
                    <input type="text" class="form-control text-uppercase" id="area" placeholder="Área">
                </div>
                <div class="col-auto">
                    <input type="hidden" name="regis" value="registrar">
                    <input type="hidden" name="tabla" value="ke_areas">
                    <input type="hidden" name="campo" value="KEA_AREA">
                    <button type="submit" class="btn btn-primary mb-3">Registrar</button>
                </div>
            </form>
        </div>

        <div class="tab-pane fade" id="servidor" role="tabpanel" aria-labelledby="servidor-tab">
            <form class="row g-2" method="POST" action="../../../Infosoft3/conexion/settings/formPlantillas" name="form-registrarPlantillas">
                <div class="col-4">
                    <label for="servicio" class="visually-hidden">Servidor</label>
                    <input type="text" class="form-control text-uppercase" id="servidor" placeholder="Servidor">
                </div>
                <div class="col-auto">
                    <input type="hidden" name="regis" value="registrar">
                    <input type="hidden" name="tabla" value="ke_servidores">
                    <input type="hidden" name="campo" value="KESRV_SERVER">
                    <button type="submit" class="btn btn-primary mb-3">Registrar</button>
                </div>
            </form>
        </div>

        <div class="tab-pane fade" id="ip" role="tabpanel" aria-labelledby="ip-tab">
            <form class="row g-2" method="POST" action="../../../Infosoft3/conexion/settings/formPlantillas" name="form-registrarPlantillas">
                <div class="col-auto">
                    <label for="servicio" class="visually-hidden">Dirección IP</label>
                    <input type="text" class="form-control text-uppercase" id="ip" placeholder="Dirección IP">
                </div>
                <div class="col-auto">
                    <input type="hidden" name="regis" value="registrar">
                    <input type="hidden" name="tabla" value="ke_ip">
                    <input type="hidden" name="campo" value="KEIP_IP">
                    <button type="submit" class="btn btn-primary mb-3">Registrar</button>
                </div>
            </form>
        </div>
        <div class="tab-pane fade" id="hostName" role="tabpanel" aria-labelledby="hostName-tab">
            <form class="row g-2" method="POST" action="../../../Infosoft3/conexion/settings/formPlantillas" name="form-registrarPlantillas">
                <div class="col-4">
                    <label for="servicio" class="visually-hidden">Host Name</label>
                    <input type="text" class="form-control text-uppercase" id="host" placeholder="Host Name">
                </div>
                <div class="col-auto">
                    <input type="hidden" name="regis" value="registrar">
                    <input type="hidden" name="tabla" value="ke_hostname">
                    <input type="hidden" name="campo" value="KEHN_HOSTNAME ">
                    <button type="submit" class="btn btn-primary mb-3">Registrar</button>
                </div>
            </form>
        </div>
        <div class="tab-pane fade" id="sistemaOperativo" role="tabpanel" aria-labelledby="sistemaOperativo-tab">
            <form class="row g-2" method="POST" action="../../../Infosoft3/conexion/settings/formPlantillas" name="form-registrarPlantillas">
                <div class="col-3">
                    <label for="servicio" class="visually-hidden">Sistema Operativo</label>
                    <input type="text" class="form-control text-uppercase" id="sistemaOperativo" placeholder="Sistema Operativo">
                </div>
                <div class="col-auto">
                    <input type="hidden" name="regis" value="registrar">
                    <input type="hidden" name="tabla" value="ke_sistemas_operativos">
                    <input type="hidden" name="campo" value="KESO_OPERATING_SYSTEM ">
                    <button type="submit" class="btn btn-primary mb-3">Registrar</button>
                </div>
            </form>
        </div>
        <div class="tab-pane fade" id="vs" role="tabpanel" aria-labelledby="vs-tab">
            <form class="row g-2" method="POST" action="../../../Infosoft3/conexion/settings/formPlantillas" name="form-registrarPlantillas">
                <div class="col-6">
                    <label for="servicio" class="visually-hidden">Versión del Sistema Operativo</label>
                    <input type="text" class="form-control text-uppercase" id="vs" placeholder="Versión del Sistema Operativo">
                </div>
                <div class="col-auto">
                    <input type="hidden" name="regis" value="registrar">
                    <input type="hidden" name="tabla" value="ke_version_os">
                    <input type="hidden" name="campo" value="KEVSOS_VERSION ">
                    <button type="submit" class="btn btn-primary mb-3">Registrar</button>
                </div>
            </form>
        </div>
    </div>
</div>