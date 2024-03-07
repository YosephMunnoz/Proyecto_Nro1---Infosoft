<div class="container-fluid">
    <div class="card shadow mt-5">
      <div class="card-header h3 titulo">
        Creación del Catalogo de Servicios
      </div>
      <div class="card-body">
        <form method="POST" action="../conexion/catalogo/formCatalogo.php" name="form-register">
        <div class="row g-4">
            <div class="mb-2 col-xxl-3 col-xl-3 col-lg-3 col-ms-6 col-sm-12">
                <label for="criticidad" class="titulo-modal ">Nivel de Criticidad:</label>
                <select type="text" id="criticidad" name="criticidad" class="form-select form-select-sm">
                        <option>Elegir...</option>
                            <?php foreach($var1 as $v) { ?>
                        <option value="<?= $v['KENC_CRITICAL_LEVEL']?>"><?= $v['KENC_CRITICAL_LEVEL'];?></option>
                            <?php } ?>
                    </select>
            </div>
            <div class="mb-2 col-xxl-3 col-xl-3 col-lg-3 col-ms-6 col-sm-12">
                <label for="servicioAsociado" class="titulo-modal ">Servicio Asociado:</label>
                <select type="text" name="servicioAsociado" id="servicioAsociado" class="form-select form-select-sm" required>
                    <option>Elegir...</option>
                        <?php foreach($var2 as $v) { ?>
                    <option value="<?= $v['KESA_SERVICE']?>"><?= $v['KESA_SERVICE'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-xxl-3 col-xl-3 col-lg-3 col-ms-6 col-sm-12">
                <label for="canalAplicativo" class="titulo-modal ">Canal Aplicatico:</label>
                <select type="text" name="canalAplicativo" id="canalAplicativo" class="form-select form-select-sm" required>
                    <option value="">Elegir...</option>
                        <?php foreach($var3 as $v) { ?>
                    <option value="<?= $v['KECA_CHANNEL']?>"><?= $v['KECA_CHANNEL'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-xxl-3 col-xl-3 col-lg-3 col-ms-6 col-sm-12">
                <label for="area" class="titulo-modal ">Área:</label>
                <select type="text" id="area" name="area" class="form-select form-select-sm" required>
                    <option>Elegir...</option>
                        <?php foreach($var4 as $v) { ?>
                    <option value="<?= $v['KEA_AREA']?>"><?= $v['KEA_AREA'];?></option>
                        <?php } ?>
                </select> 
            </div>
        </div>
        <div class="row g-3">
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="server" class="titulo-modal ">Servidor:</label>
                <select type="text" id="servidor" name="servidor" class="form-select form-select-sm" required>
                    <option>Elegir...</option>
                        <?php foreach($var5 as $v) { ?>
                    <option value="<?= $v['KESRV_SERVER']?>"><?= $v['KESRV_SERVER'];?></option>
                        <?php } ?>
                </select>  
            </div>
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="user" class="titulo-modal ">Nombre:</label><span class="text-body-secondary">(Host name)</span>
                <select type="text" id="host" name="host" class="form-select form-select-sm" required>
                    <option>Elegir...</option>
                        <?php foreach($var7 as $v) { ?>
                    <option value="<?= $v['KEHN_HOSTNAME']?>"><?= $v['KEHN_HOSTNAME'];?></option>
                        <?php } ?>
                </select>   
            </div>
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="ip" class="titulo-modal ">IP:</label>
                <select type="text" id="ip" name="ip" class="form-select form-select-sm" required>
                    <option>Elegir...</option>
                        <?php foreach($var6 as $v) { ?>
                    <option value="<?= $v['KEIP_IP']?>"><?= $v['KEIP_IP'];?></option>
                        <?php } ?>
                </select> 
            </div>
        </div>
        <div class="row g-3">
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="sistemaOperativo" class="titulo-modal ">Sistema Operativo:</label>
                <select type="text" id="sistemOper" name="sistemOper" class="form-select form-select-sm" required>
                    <option>Elegir...</option>
                        <?php foreach($var8 as $v) { ?>
                    <option value="<?= $v['KESO_OPERATING_SYSTEM']?>"><?= $v['KESO_OPERATING_SYSTEM'];?></option>
                        <?php } ?>
                </select>  
            </div>
            <div class="mb-2 col-sm-12 col-ms-12 col-lg-8 col-xl-8 col-xxl-8">
                <label for="vs" class="titulo-modal ">Versión:</label><span class="text-body-secondary">(Sistema Operativo)</span>
                <select type="text" id="vs_so" name="vs_so" class="form-select form-select-sm" required>
                    <option>Elegir...</option>
                        <?php foreach($var9 as $v) { ?>
                    <option value="<?= $v['KEVSOS_VERSION']?>"><?= $v['KEVSOS_VERSION'];?></option>
                        <?php } ?>
                </select>  
            </div>
        </div>
        <div class="row g-3">
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="instancia" class="titulo-modal form-label">Nombre:</label><span class="text-body-secondary">(Instancia - BBDD)</span>
                <select type="text" id="bd" name="bd" class="form-select form-select-sm" required>
                    <option>Elegir...</option>
                        <?php foreach($var10 as $v) { ?>
                    <option value="<?= $v['KEIDB_INSTANCE']?>"><?= $v['KEIDB_INSTANCE'];?></option>
                        <?php } ?>
                </select>  
            </div>
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="bbdd" class="titulo-modal ">Base de Datos:</label><span class="text-body-secondary">(Manejador o DBMS)</span>
                <select type="text" id="nameBd" name="nameBd" class="form-select form-select-sm" required>
                    <option >Elegir...</option>
                        <?php foreach($var11 as $v) { ?>
                    <option value="<?= $v['KEDBM_GESTOR']?>"><?= $v['KEDBM_GESTOR'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="vsBbdd" class="titulo-modal ">Versión:</label><span class="text-body-secondary">(base de datos - BBDD)</span>
                <select type="text" id="vs_bd" name="vs_bd" class="form-select form-select-sm" required>
                    <option>Elegir...</option>
                        <?php foreach($var12 as $v) { ?>
                    <option value="<?= $v['KEDBMVS_VERSION']?>"><?= $v['KEDBMVS_VERSION'];?></option>
                        <?php } ?>
                </select> 
            </div>
        </div>
        <div class="row g-3">
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="instancia" class="titulo-modal form-label">Bus:</label>
                <select type="text" id="bus" name="bus" class="form-select form-select-sm" required>
                    <option>Elegir...</option>
                        <?php foreach($var13 as $v) { ?>
                    <option value="<?= $v['KEB_BUS']?>"><?= $v['KEB_BUS'];?></option>
                        <?php } ?>
                </select>  
            </div>
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="bbdd" class="titulo-modal ">Capa Tuxedo:</label>
                <select type="text" id="tuxedo" name="tuxedo" class="form-select form-select-sm" required>
                    <option >Elegir...</option>
                        <?php foreach($var14 as $v) { ?>
                    <option value="<?= $v['KECT_CAPA_TUXEDO']?>"><?= $v['KECT_CAPA_TUXEDO'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="vsBbdd" class="titulo-modal ">WebLogic:</label>
                <select type="text" id="web" name="web" class="form-select form-select-sm" required>
                    <option>Elegir...</option>
                        <?php foreach($var15 as $v) { ?>
                    <option value="<?= $v['KEW_WEBLOGIC']?>"><?= $v['KEW_WEBLOGIC'];?></option>
                        <?php } ?>
                </select> 
            </div>
        </div>
        <div class="row g-3">
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="instancia" class="titulo-modal form-label">F5 Comunicaciones:</label>
                <select type="text" id="f5" name="f5" class="form-select form-select-sm" required>
                    <option>Elegir...</option>
                        <?php foreach($var16 as $v) { ?>
                    <option value="<?= $v['KEFC_F5_COMUNICACIONES']?>"><?= $v['KEFC_F5_COMUNICACIONES'];?></option>
                        <?php } ?>
                </select>  
            </div>
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="bbdd" class="titulo-modal ">Ip :</label><span class="text-body-secondary">(F5 Comunicaciones)</span>
                <select type="text" id="ipf5" name="ipf5" class="form-select form-select-sm" required>
                    <option >Elegir...</option>
                        <?php foreach($var17 as $v) { ?>
                    <option value="<?= $v['KEIPF_IP_F5']?>"><?= $v['KEIPF_IP_F5'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="vsBbdd" class="titulo-modal ">Puerto:</label><span class="text-body-secondary">(IP F5 Comunicaciones)</span>
                <input name="port" id="port" class="form-control form-control-sm " pattern="[0-9]{1,}\.[0-9]{1,}\.[0-9]{1,}\.[0-9]{1,}" placeholder="Ejemplo: 10.10.10.10" required>
            </div>
        </div>
        <div class="row g-3">
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="instancia" class="titulo-modal form-label">Pools/Vs:</label>
                <select type="text" id="pools" name="pools" class="form-select form-select-sm" required>
                    <option>Elegir...</option>
                        <?php foreach($var18 as $v) { ?>
                    <option value="<?= $v['KEPS_POOLS_VS']?>"><?= $v['KEPS_POOLS_VS'];?></option>
                        <?php } ?>
                </select>  
            </div>
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="bbdd" class="titulo-modal ">Otros Servicios Asociados:</label>
                <select type="text" id="otros" name="otros" class="form-select form-select-sm" required>
                    <option >Elegir...</option>
                        <?php foreach($var19 as $v) { ?>
                    <option value="<?= $v['KEOSA_OTHER_ASSOCIATED_SERVICES']?>"><?= $v['KEOSA_OTHER_ASSOCIATED_SERVICES'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="bbdd" class="titulo-modal ">Observación General:</label>
                <select type="text" id="general" name="general" class="form-select form-select-sm" required>
                    <option >Elegir...</option>
                        <?php foreach($var22 as $v) { ?>
                    <option value="<?= $v['KEOBG_GENERAL_REMARKS']?>"><?= $v['KEOBG_GENERAL_REMARKS'];?></option>
                        <?php } ?>
                </select>
            </div>
        </div>
        <div class="row g-3">
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="instancia" class="titulo-modal form-label">Ubicación:</label>
                <select type="text" id="ubicacion" name="ubicacion" class="form-select form-select-sm" required>
                    <option>Elegir...</option>
                        <?php foreach($var20 as $v) { ?>
                    <option value="<?= $v['KEU_LOCATION']?>"><?= $v['KEU_LOCATION'];?></option>
                        <?php } ?>
                </select>  
            </div>
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="bbdd" class="titulo-modal ">Rack:</label>
                <select type="text" id="rack" name="rack" class="form-select form-select-sm" required>
                    <option >Elegir...</option>
                        <?php foreach($var21 as $v) { ?>
                    <option value="<?= $v['KER_RACK']?>"><?= $v['KER_RACK'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-xxl-4 col-xl-4 col-lg-4 col-ms-12 col-sm-12">
                <label for="bbdd" class="titulo-modal ">fila:</label>
                <input type="number" name="rows" id="rows" class="form-control form-control-sm " max="100" placeholder="Ejemplo: 11" required>
            </div>
        </div>
            <input type="hidden" name="regis" value="1">
            <input type="hidden" name="regis" value="regis">
            <input type="hidden" name="servicio" value="<?= $_GET["servicio"]?>">
            <button type="submit" class="btn btn-primary">Registrar</button>
        </form>
      </div>
    </div>
</div>