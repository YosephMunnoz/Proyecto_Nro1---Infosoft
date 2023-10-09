<!-- Modal -->
<div class="modal fade" id="edit<?= $r['id']?>" tabindex="-1" aria-labelledby="edit_label" aria-hidden="true">
  <div class="modal-dialog modal-xl modal-dialog-centered small">
    <div class="modal-content">
      <div class="modal-header btn-light">
      <?php  if($_GET["value"]== 1){?>
        <h5 class="modal-title fw-bold titulo-modal" id="edit_label">Detalles de: <span class="h6"><?= $_GET["servicio"]?></span> - Canal: <span class="h6"><?php if (isset($link)){ echo $link; }else{ echo "Todos"; } ?></span> - ID:<span class="h6"> <?= $r['id']?></span></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form method="POST" action="../../../Infosoft3/conexion/formCatalogo.php" name="form-editCatalogo">
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="nivel_criticidad" class="titulo-modal ">Nivel de Criticidad</label>
                    <select type="text" id="input" name="criticidad" class="form-select form-select-sm" >
                        <option value="<?=$r['nivel_criticidad'];?>">Elegir...</option>
                            <?php foreach($var as $v) { ?>
                        <option value="<?= $v['nivel_criticidad']?>"><?= $v['nivel_criticidad'];?></option>
                            <?php } ?>
                    </select>
                </div>
                <div class="mb-2 col-3">
                    <label for="Área" class="titulo-modal">Área</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['area'];?>" name="area">
                </div>
                <div class="mb-2 col-3" >
                    <label for="Servidor" class="titulo-modal">Servidor</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['servidor'];?>" name="servidor"> 
                </div>
                <div class="mb-2 col-3">
                    <label for="ip" class="titulo-modal">Dirección IP</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['ip'];?>" name="ip">
                </div>
            </div>
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="Hostname" class="titulo-modal">Hostname</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['hostname'];?>" name="host">
                </div>
                <div class="mb-2 col-2">
                    <label for="Sistema Operativo" class="titulo-modal">Sistema Operativo</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['sistema_operativo'];?>" name="sistemOper">
                </div>
                <div class="mb-2 col-5">
                    <label for="Versión de S.O" class="titulo-modal">Versión de S.O</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['vs_so'];?>" name="vs_so">
                </div>
                <div class="mb-2 col-2">
                    <label for="Base de datos" class="titulo-modal">Base de datos</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['bbdd'];?>" name="bd">
                </div>       
            </div>
            <div class="row g-4">
                <div class="mb-2 col-3">
                    <label for="Manejador de BD" class="titulo-modal">Manejador de BD</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['dbms'];?>" name="nameBd">
                </div>
                <div class="mb-2 col-3">
                    <label for="Version de BD" class="titulo-modal">Versión de BD</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['vs_bd'];?>" name="vs_bd">
                </div>
                <div class="mb-2 col-3">
                    <label for="bus" class="titulo-modal">Bus</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['bus'];?>" name="bus">
                </div>
                <div class="mb-2 col-3">
                    <label for="capa tuxedo" class="titulo-modal">Capa Tuxedo</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['capa_tuxedo'];?>" name="tuxedo">
                </div>       
            </div>
            <div class="row g-5">
                <div class="mb-2 col-3">
                    <label for="WebLogic" class="titulo-modal">WebLogic</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['weblogic'];?>" name="weblogic">
                </div>
                <div class="mb-2 col-3">
                    <label for="F5 Comunicaciones" class="titulo-modal">F5 Comunicaciones</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['f5_comunicaciones'];?>" name="f5">
                </div>
                <div class="mb-2 col-3">
                    <label for="ip f5" class="titulo-modal">IP F5</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['ip_f5'];?>" name="ipf5">
                </div>
                <div class="mb-2 col-3">
                    <label for="Puerto F5" class="titulo-modal">Port F5</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['port_f5'];?>" name="portf5">
                </div>       
            </div>
            <div class="row g-5">
                <div class="mb-2 col-3">
                    <label for="Pools Vs" class="titulo-modal">Pools/Vs</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['pools_vs'];?>" name="pools">
                </div>
                <div class="mb-2 col-3">
                    <label for="otros servicios asociados" class="titulo-modal">Otros Servicios Asociados</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['otro_servicio_asociado'];?>" name="otros">
                </div>
                <div class="mb-2 col-3">
                    <label for="Ubicacion" class="titulo-modal">Ubicación</label>
                    <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['ubicacion'];?>" name="ubicacion">
                </div>
                <div class="mb-2 col-2">
                    <label for="rack" class="titulo-modal">Rack</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['rack'];?>" name="rack">
                </div>
                <div class="mb-2 col-1">
                    <label for="fila" class="titulo-modal">fila</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['fila'];?>" name="fila">
                </div>         
            </div>
            <div class="row g-1">
            <div class="mb-2 col-12">
                <label for="observacion general" class="titulo-modal">Observación General</label>
                    <input type="text" class="form-control form-control-sm text-center" value="<?=$r['observacion_general'];?>" name="general">
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <input type="hidden" name="canal" value="<?= $_GET["canal"]?>">
            <input type="hidden" name="servicio" value="<?= $_GET["servicio"]?>">
            <input type="hidden" id="chargeId" name="id" value="<?= $r['id']?>">
            <input type="hidden" name="regis" value="edit">
            <button type="buttom" class="btn btn-outline-secondary btn-sm" data-bs-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-outline-primary btn-sm">Guardar</button>
        </div>
    </form>
    </div>
  </div>
</div>
<?php }?>