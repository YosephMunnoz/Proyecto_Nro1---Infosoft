<!-- Modal -->
<div class="modal fade" id="edit<?= $r['KECS_ID']?>" tabindex="-1" aria-labelledby="edit_label" aria-hidden="true">
  <div class="modal-dialog modal-xl modal-dialog-centered small">
    <div class="modal-content">
      <div class="modal-header btn-light">
      <?php  if($_GET["value"]== 1){?>
        <h5 class="modal-title fw-bold titulo-modal" id="edit_label">Detalles de: <span class="h6"><?= $_GET["servicio"]?></span> - Canal: <span class="h6"><?php if (isset($link)){ echo $link; }else{ echo "Todos"; } ?></span> - ID:<span class="h6"> <?= $r['KECS_ID']?></span></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form method="POST" action="../../../Infosoft3/conexion/catalogo/formCatalogo.php" name="form-editCatalogo">
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="nivel_criticidad" class="titulo-modal ">Nivel de Criticidad</label>
                    <select type="text" id="criticidad" name="criticidad" class="form-select form-select-sm">
                        <option value="<?=$r['KENC_CRITICAL_LEVEL'];?>">Elegir...</option>
                            <?php foreach($var1 as $v) { ?>
                        <option value="<?= $v['KENC_CRITICAL_LEVEL']?>"><?= $v['KENC_CRITICAL_LEVEL'];?></option>
                            <?php } ?>
                    </select>
                </div>
                <div class="mb-2 col-3">
                    <label for="Área" class="titulo-modal">Área</label>
                    <select type="text" id="area" name="area" class="form-select form-select-sm" >
                        <option value="<?=$r['KEA_AREA'];?>">Elegir...</option>
                            <?php foreach($var4 as $v) { ?>
                        <option value="<?= $v['KEA_AREA']?>"><?= $v['KEA_AREA'];?></option>
                            <?php } ?>
                    </select> 
                </div>
                <div class="mb-2 col-3" >
                    <label for="Servidor" class="titulo-modal">Servidor</label>
                    <select type="text" id="servidor" name="servidor" class="form-select form-select-sm" >
                        <option value="<?=$r['KESRV_SERVER'];?>">Elegir...</option>
                            <?php foreach($var5 as $v) { ?>
                        <option value="<?= $v['KESRV_SERVER']?>"><?= $v['KESRV_SERVER'];?></option>
                            <?php } ?>
                    </select>  
                </div>
                <div class="mb-2 col-3">
                    <label for="ip" class="titulo-modal">Dirección IP</label>
                    <select type="text" id="ip" name="ip" class="form-select form-select-sm" >
                        <option value="<?=$r['KEIP_IP'];?>">Elegir...</option>
                            <?php foreach($var6 as $v) { ?>
                        <option value="<?= $v['KEIP_IP']?>"><?= $v['KEIP_IP'];?></option>
                            <?php } ?>
                    </select>  
                </div>
            </div>
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="Hostname" class="titulo-modal">Hostname</label>
                    <select type="text" id="host" name="host" class="form-select form-select-sm" >
                        <option value="<?=$r['KEHN_HOSTNAME'];?>">Elegir...</option>
                            <?php foreach($var7 as $v) { ?>
                        <option value="<?= $v['KEHN_HOSTNAME']?>"><?= $v['KEHN_HOSTNAME'];?></option>
                            <?php } ?>
                    </select>  
                </div>
                <div class="mb-2 col-2">
                    <label for="Sistema Operativo" class="titulo-modal">Sistema Operativo</label>
                    <select type="text" id="sistemOper" name="sistemOper" class="form-select form-select-sm" >
                        <option value="<?=$r['KESO_OPERATING_SYSTEM'];?>">Elegir...</option>
                            <?php foreach($var8 as $v) { ?>
                        <option value="<?= $v['KESO_OPERATING_SYSTEM']?>"><?= $v['KESO_OPERATING_SYSTEM'];?></option>
                            <?php } ?>
                    </select>  
                </div>
                <div class="mb-2 col-5">
                    <label for="Versión de S.O" class="titulo-modal">Versión de S.O</label>
                    <select type="text" id="vs_so" name="vs_so" class="form-select form-select-sm" >
                        <option value="<?=$r['KEVSOS_VERSION'];?>">Elegir...</option>
                            <?php foreach($var9 as $v) { ?>
                        <option value="<?= $v['KEVSOS_VERSION']?>"><?= $v['KEVSOS_VERSION'];?></option>
                            <?php } ?>
                    </select>  
                </div>
                <div class="mb-2 col-2">
                    <label for="Base de datos" class="titulo-modal">Base de datos</label>
                    <select type="text" id="bd" name="bd" class="form-select form-select-sm" >
                        <option value="<?=$r['KEIDB_INSTANCE'];?>">Elegir...</option>
                            <?php foreach($var10 as $v) { ?>
                        <option value="<?= $v['KEIDB_INSTANCE']?>"><?= $v['KEIDB_INSTANCE'];?></option>
                            <?php } ?>
                    </select>  
                </div>       
            </div>
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="Manejador de BD" class="titulo-modal">Manejador de BD</label>
                    <select type="text" id="nameBd" name="nameBd" class="form-select form-select-sm" >
                        <option value="<?=$r['KEDBM_GESTOR'];?>">Elegir...</option>
                            <?php foreach($var11 as $v) { ?>
                        <option value="<?= $v['KEDBM_GESTOR']?>"><?= $v['KEDBM_GESTOR'];?></option>
                            <?php } ?>
                    </select>  
                </div>
                <div class="mb-2 col-3">
                    <label for="Version de BD" class="titulo-modal">Versión de BD</label>
                    <select type="text" id="vs_bd" name="vs_bd" class="form-select form-select-sm" >
                        <option value="<?=$r['KEDBMVS_VERSION'];?>">Elegir...</option>
                            <?php foreach($var12 as $v) { ?>
                        <option value="<?= $v['KEDBMVS_VERSION']?>"><?= $v['KEDBMVS_VERSION'];?></option>
                            <?php } ?>
                    </select>  
                </div>
                <div class="mb-2 col-3">
                    <label for="bus" class="titulo-modal">Bus</label>
                    <select type="text" id="bus" name="bus" class="form-select form-select-sm" >
                        <option value="<?=$r['KEB_BUS'];?>">Elegir...</option>
                            <?php foreach($var13 as $v) { ?>
                        <option value="<?= $v['KEB_BUS']?>"><?= $v['KEB_BUS'];?></option>
                            <?php } ?>
                    </select>  
                </div>
                <div class="mb-2 col-3">
                    <label for="capa tuxedo" class="titulo-modal">Capa Tuxedo</label>
                    <select type="text" id="tuxedo" name="tuxedo" class="form-select form-select-sm" >
                        <option value="<?=$r['KECT_CAPA_TUXEDO'];?>">Elegir...</option>
                            <?php foreach($var14 as $v) { ?>
                        <option value="<?= $v['KECT_CAPA_TUXEDO']?>"><?= $v['KECT_CAPA_TUXEDO'];?></option>
                            <?php } ?>
                    </select>  
                </div>       
            </div>
            <div class="row g-5">
                <div class="mb-2 col-3">
                    <label for="WebLogic" class="titulo-modal">WebLogic</label>
                    <select type="text" id="weblogic" name="weblogic" class="form-select form-select-sm" >
                        <option value="<?=$r['KEW_WEBLOGIC'];?>">Elegir...</option>
                            <?php foreach($var15 as $v) { ?>
                        <option value="<?= $v['KEW_WEBLOGIC']?>"><?= $v['KEW_WEBLOGIC'];?></option>
                            <?php } ?>
                    </select>  
                </div>
                <div class="mb-2 col-3">
                    <label for="F5 Comunicaciones" class="titulo-modal">F5 Comunicaciones</label>
                    <select type="text" id="f5" name="f5" class="form-select form-select-sm" >
                        <option value="<?=$r['KEFC_F5_COMUNICACIONES'];?>">Elegir...</option>
                            <?php foreach($var16 as $v) { ?>
                        <option value="<?= $v['KEFC_F5_COMUNICACIONES']?>"><?= $v['KEFC_F5_COMUNICACIONES'];?></option>
                            <?php } ?>
                    </select>  
                </div>
                <div class="mb-2 col-3">
                    <label for="ip f5" class="titulo-modal">IP F5</label>
                    <select type="text" id="ipf5" name="ipf5" class="form-select form-select-sm" >
                        <option value="<?=$r['KEIPF_IP_F5'];?>">Elegir...</option>
                            <?php foreach($var17 as $v) { ?>
                        <option value="<?= $v['KEIPF_IP_F5']?>"><?= $v['KEIPF_IP_F5'];?></option>
                            <?php } ?>
                    </select>  
                </div>
                <div class="mb-2 col-3">
                    <label for="Puerto F5" class="titulo-modal">Port F5</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KECS_PORTF5'];?>" name="portf5">
                </div>       
            </div>
            <div class="row g-5">
                <div class="mb-2 col-3">
                    <label for="Pools Vs" class="titulo-modal">Pools/Vs</label>
                    <select type="text" id="pools" name="pools" class="form-select form-select-sm" >
                        <option value="<?=$r['KEPS_POOLS_VS'];?>">Elegir...</option>
                            <?php foreach($var18 as $v) { ?>
                        <option value="<?= $v['KEPS_POOLS_VS']?>"><?= $v['KEPS_POOLS_VS'];?></option>
                            <?php } ?>
                    </select>  
                </div>
                <div class="mb-2 col-3">
                    <label for="otros servicios asociados" class="titulo-modal">Otros Servicios Asociados</label>
                    <select type="text" id="otros" name="otros" class="form-select form-select-sm" >
                        <option value="<?=$r['KEOSA_OTHER_ASSOCIATED_SERVICES'];?>">Elegir...</option>
                            <?php foreach($var19 as $v) { ?>
                        <option value="<?= $v['KEOSA_OTHER_ASSOCIATED_SERVICES']?>"><?= $v['KEOSA_OTHER_ASSOCIATED_SERVICES'];?></option>
                            <?php } ?>
                    </select>  
                </div>
                <div class="mb-2 col-3">
                    <label for="Ubicacion" class="titulo-modal">Ubicación</label>
                    <select type="text" id="ubicacion" name="ubicacion" class="form-select form-select-sm" >
                        <option value="<?=$r['KEU_LOCATION'];?>">Elegir...</option>
                            <?php foreach($var20 as $v) { ?>
                        <option value="<?= $v['KEU_LOCATION']?>"><?= $v['KEU_LOCATION'];?></option>
                            <?php } ?>
                    </select>  
                </div>
                <div class="mb-2 col-2">
                    <label for="rack" class="titulo-modal">Rack</label>
                    <select type="text" id="rack" name="rack" class="form-select form-select-sm" >
                        <option value="<?=$r['KER_RACK'];?>">Elegir...</option>
                            <?php foreach($var21 as $v) { ?>
                        <option value="<?= $v['KER_RACK']?>"><?= $v['KER_RACK'];?></option>
                            <?php } ?>
                    </select>  
                </div>
                <div class="mb-2 col-1">
                    <label for="fila" class="titulo-modal">fila</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KECS_ROWS'];?>" name="fila">
                </div>         
            </div>
            <div class="row g-1">
            <div class="mb-2 col-12">
                <label for="observacion general" class="titulo-modal">Observación General</label>
                    <select type="text" id="general" name="general" class="form-select form-select-sm" >
                        <option value="<?=$r['KEOBG_GENERAL_REMARKS'];?>">Elegir...</option>
                            <?php foreach($var22 as $v) { ?>
                        <option value="<?= $v['KEOBG_GENERAL_REMARKS']?>"><?= $v['KEOBG_GENERAL_REMARKS'];?></option>
                            <?php } ?>
                    </select>  
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <input type="hidden" name="canal" value="<?= $_GET["canal"]?>">
            <input type="hidden" name="servicio" value="<?= $_GET["servicio"]?>">
            <input type="hidden" id="chargeId" name="id" value="<?= $r['KECS_ID']?>">
            <input type="hidden" name="regis" value="edit">
            <button type="buttom" class="btn btn-outline-secondary btn-sm" data-bs-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-outline-primary btn-sm">Guardar</button>
        </div>
    </form>
    </div>
  </div>
</div>
<?php }?>