<!-- Modal -->
<div class="modal fade" id="detalles<?= $r['KECS_ID']?>" tabindex="-1" aria-labelledby="detalles_label" aria-hidden="true">
  <div class="modal-dialog modal-xl modal-dialog-centered small">
    <div class="modal-content">
      <div class="modal-header btn-light">
      <?php  if($_GET["value"]== 1){?>
        <h5 class="modal-title fw-bold titulo-modal" id="detalles_label">Detalles de: <span class="h6"><?= $_GET["servicio"]?></span> - Canal: <span class="h6"><?php if (isset($link)){ echo $link; }else{ echo "Todos"; } ?></span> - ID:<span class="h6"> <?= $r['KECS_ID']?></span></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="">
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="nivel_criticidad" class="titulo-modal ">Nivel de Criticidad</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KENC_CRITICAL_LEVEL'];?>" aria-label="Disabled input" disabled readonly id="input" >
                </div>
                <div class="mb-2 col-3">
                    <label for="Área" class="titulo-modal">Área</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEA_AREA'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3" >
                    <label for="Servidor" class="titulo-modal">Servidor</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KESRV_SERVER'];?>" aria-label="Disabled input" disabled readonly> 
                </div>
                <div class="mb-2 col-3">
                    <label for="ip" class="titulo-modal">Dirección IP</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEIP_IP'];?>" aria-label="Disabled input" disabled readonly>
                </div>
            </div>
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="Hostname" class="titulo-modal">Hostname</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEHN_HOSTNAME'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="Sistema Operativo" class="titulo-modal">Sistema Operativo</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KESO_OPERATING_SYSTEM'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-5">
                    <label for="Versión de S.O" class="titulo-modal">Versión de S.O</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['KEVSOS_VERSION'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="Base de datos" class="titulo-modal">Base de datos</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEIDB_INSTANCE'];?>" aria-label="Disabled input" disabled readonly>
                </div>       
            </div>
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="Manejador de BD" class="titulo-modal">Manejador de BD</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEDBM_GESTOR'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="Version de BD" class="titulo-modal">Versión de BD</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEDBMVS_VERSION'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="bus" class="titulo-modal">Bus</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['KEB_BUS'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="capa tuxedo" class="titulo-modal">Capa Tuxedo</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KECT_CAPA_TUXEDO'];?>" aria-label="Disabled input" disabled readonly>
                </div>       
            </div>
            <div class="row g-5">
                <div class="mb-2 col-3">
                    <label for="WebLogic" class="titulo-modal">WebLogic</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEW_WEBLOGIC'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="F5 Comunicaciones" class="titulo-modal">F5 Comunicaciones</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEFC_F5_COMUNICACIONES'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="ip f5" class="titulo-modal">IP F5</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['KEIPF_IP_F5'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="Puerto F5" class="titulo-modal">Port F5</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KECS_PORTF5'];?>" aria-label="Disabled input" disabled readonly>
                </div>       
            </div>
            <div class="row g-5">
                <div class="mb-2 col-3">
                    <label for="Pools Vs" class="titulo-modal">Pools/Vs</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEPS_POOLS_VS'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="otros servicios asociados" class="titulo-modal">Otros Servicios Asociados</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEOSA_OTHER_ASSOCIATED_SERVICES'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="Ubicacion" class="titulo-modal">Ubicación</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['KEU_LOCATION'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="rack" class="titulo-modal">Rack</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KER_RACK'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-1">
                    <label for="fila" class="titulo-modal">fila</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KECS_ROWS'];?>" aria-label="Disabled input" disabled readonly>
                </div>         
            </div>
            <div class="row g-1">
            <div class="mb-2 col-12">
                <label for="observacion general" class="titulo-modal">Observación General</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEOBG_GENERAL_REMARKS'];?>" aria-label="Disabled input" disabled readonly>
                </div>
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-primary btn-sm" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

    <?php } if($_GET["value"] == 2){?>
        <h5 class="modal-title fw-bold titulo-modal" id="detalles_label">Detalles de: <span class="h6"><?= $_GET["servicio"]?></span> - Canal: <span class="h6"><?php if (isset($link)){ echo $link; }else{ echo $r['KECA_CHANNEL']; } ?></span> - ID:<span class="h6"> <?= $r['KECS_ID']?></span></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form action="">
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="nivel_criticidad" class="titulo-modal ">Nivel de Criticidad</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KENC_CRITICAL_LEVEL'];?>" aria-label="Disabled input" disabled readonly id="input" >
                </div>
                <div class="mb-2 col-3">
                    <label for="Área" class="titulo-modal">Área</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEA_AREA'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3" >
                    <label for="Servidor" class="titulo-modal">Servidor</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KESRV_SERVER'];?>" aria-label="Disabled input" disabled readonly> 
                </div>
                <div class="mb-2 col-3">
                    <label for="ip" class="titulo-modal">Dirección IP</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEIP_IP'];?>" aria-label="Disabled input" disabled readonly>
                </div>
            </div>
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="Hostname" class="titulo-modal">Hostname</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEHN_HOSTNAME'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="Sistema Operativo" class="titulo-modal">Sistema Operativo</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KESO_OPERATING_SYSTEM'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-5">
                    <label for="Versión de S.O" class="titulo-modal">Versión de S.O</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['KEVSOS_VERSION'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="Base de datos" class="titulo-modal">Base de datos</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEIDB_INSTANCE'];?>" aria-label="Disabled input" disabled readonly>
                </div>       
            </div>
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="Manejador de BD" class="titulo-modal">Manejador de BD</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEDBM_GESTOR'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="Version de BD" class="titulo-modal">Versión de BD</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEDBMVS_VERSION'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="bus" class="titulo-modal">Bus</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['KEB_BUS'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="capa tuxedo" class="titulo-modal">Capa Tuxedo</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KECT_CAPA_TUXEDO'];?>" aria-label="Disabled input" disabled readonly>
                </div>       
            </div>
            <div class="row g-5">
                <div class="mb-2 col-3">
                    <label for="WebLogic" class="titulo-modal">WebLogic</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEW_WEBLOGIC'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="F5 Comunicaciones" class="titulo-modal">F5 Comunicaciones</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEFC_F5_COMUNICACIONES'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="ip f5" class="titulo-modal">IP F5</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['KEIPF_IP_F5'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="Puerto F5" class="titulo-modal">Port F5</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KECS_PORTF5'];?>" aria-label="Disabled input" disabled readonly>
                </div>       
            </div>
            <div class="row g-5">
                <div class="mb-2 col-3">
                    <label for="Pools Vs" class="titulo-modal">Pools/Vs</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEPS_POOLS_VS'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="otros servicios asociados" class="titulo-modal">Otros Servicios Asociados</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEOSA_OTHER_ASSOCIATED_SERVICES'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="Ubicacion" class="titulo-modal">Ubicación</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['KEU_LOCATION'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="rack" class="titulo-modal">Rack</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KER_RACK'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-1">
                    <label for="fila" class="titulo-modal">fila</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KECS_ROWS'];?>" aria-label="Disabled input" disabled readonly>
                </div>         
            </div>
            <div class="row g-1">
            <div class="mb-2 col-12">
                <label for="observacion general" class="titulo-modal">Observación General</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEOBG_GENERAL_REMARKS'];?>" aria-label="Disabled input" disabled readonly>
                </div>
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-primary btn-sm" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<?php } if($_GET["value"] == 3){?>
        <h5 class="modal-title fw-bold titulo-modal" id="detalles_label">Detalles de: <span class="h6"><?= $r["KESA_SERVICE"]?></span> - Canal: <span class="h6"><?php if (isset($link)){ echo $link; }else{ echo $r['KECA_CHANNEL']; } ?></span> - ID:<span class="h6"> <?= $r['KECS_ID ']?></span></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form action="">
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="nivel_criticidad" class="titulo-modal ">Nivel de Criticidad</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KENC_CRITICAL_LEVEL'];?>" aria-label="Disabled input" disabled readonly id="input" >
                </div>
                <div class="mb-2 col-3">
                    <label for="Área" class="titulo-modal">Área</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEA_AREA'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3" >
                    <label for="Servidor" class="titulo-modal">Servidor</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KESRV_SERVER'];?>" aria-label="Disabled input" disabled readonly> 
                </div>
                <div class="mb-2 col-3">
                    <label for="ip" class="titulo-modal">Dirección IP</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEIP_IP'];?>" aria-label="Disabled input" disabled readonly>
                </div>
            </div>
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="Hostname" class="titulo-modal">Hostname</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEHN_HOSTNAME'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="Sistema Operativo" class="titulo-modal">Sistema Operativo</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KESO_OPERATING_SYSTEM'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-5">
                    <label for="Versión de S.O" class="titulo-modal">Versión de S.O</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['KEVSOS_VERSION'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="Base de datos" class="titulo-modal">Base de datos</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEIDB_INSTANCE'];?>" aria-label="Disabled input" disabled readonly>
                </div>       
            </div>
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="Manejador de BD" class="titulo-modal">Manejador de BD</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEDBM_GESTOR'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="Version de BD" class="titulo-modal">Versión de BD</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEDBMVS_VERSION'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="bus" class="titulo-modal">Bus</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['KEB_BUS'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="capa tuxedo" class="titulo-modal">Capa Tuxedo</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KECT_CAPA_TUXEDO'];?>" aria-label="Disabled input" disabled readonly>
                </div>       
            </div>
            <div class="row g-5">
                <div class="mb-2 col-3">
                    <label for="WebLogic" class="titulo-modal">WebLogic</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEW_WEBLOGIC'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="F5 Comunicaciones" class="titulo-modal">F5 Comunicaciones</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEFC_F5_COMUNICACIONES'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="ip f5" class="titulo-modal">IP F5</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['KEIPF_IP_F5'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="Puerto F5" class="titulo-modal">Port F5</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KECS_PORTF5'];?>" aria-label="Disabled input" disabled readonly>
                </div>       
            </div>
            <div class="row g-5">
                <div class="mb-2 col-3">
                    <label for="Pools Vs" class="titulo-modal">Pools/Vs</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEPS_POOLS_VS'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="otros servicios asociados" class="titulo-modal">Otros Servicios Asociados</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEOSA_OTHER_ASSOCIATED_SERVICES'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-3">
                    <label for="Ubicacion" class="titulo-modal">Ubicación</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['KEU_LOCATION'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-2">
                    <label for="rack" class="titulo-modal">Rack</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KER_RACK'];?>" aria-label="Disabled input" disabled readonly>
                </div>
                <div class="mb-2 col-1">
                    <label for="fila" class="titulo-modal">fila</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KECS_ROWS'];?>" aria-label="Disabled input" disabled readonly>
                </div>         
            </div>
            <div class="row g-1">
            <div class="mb-2 col-12">
                <label for="observacion general" class="titulo-modal">Observación General</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['KEOBG_GENERAL_REMARKS'];?>" aria-label="Disabled input" disabled readonly>
                </div>
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-primary btn-sm" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<?php }?>