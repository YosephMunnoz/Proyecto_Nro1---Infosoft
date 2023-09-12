<!-- Modal -->
<div class="modal fade " id="detalles<?= $r['id_codigo']?>" tabindex="-1" aria-labelledby="detalles_label" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable small">
        <div class="modal-content">
            <div class="modal-header btn-light">
                <?php  if($_GET["value"] == 1 || $_GET["value"] == 2 || $_GET["value"] == 3){?>
                <h5 class="modal-title fw-bold titulo-modal" id="detalles_label">Detalles de <?= $_GET["nombre"]." Bajo: "?>
                    <span class="h6"><?= $r['sistema_operativo'];?></span> - Servidor: 
                    <span class="h6"><?= $r['servidor_fisico'];?></span> - Virtual: 
                    <span class="h6"><?= $r['servidor_virtual'];?></span> - Entorno: 
                    <span class="h6"><?php if (isset($link)){ echo $link; }else{ echo "Todos"; } ?></span> - ID:
                    <span class="h6"> <?= $r['id_codigo']?></span>
                </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="">
                    <div class="row g-2">
                        <div class="mb-2 col-2">
                            <label for="nivel_criticidad" class="titulo-modal ">Nivel de Criticidad</label>
                            <?php if($r['criticidad'] == "MUY ALTO") {?>
                            <input type="text" class="form-control form-control-sm text-center text-white bg-danger" value="<?=$r['criticidad'];?>" aria-label="Disabled input" disabled readonly id="input_nivel_criticidad" >
                            <?php } else if($r['criticidad'] == "ALTO") {?>
                            <input type="text" class="form-control form-control-sm text-center text-white colors" value="<?=$r['criticidad'];?>" aria-label="Disabled input" disabled readonly id="input_nivel_criticidad" >
                            <?php } else if($r['criticidad'] == "MEDIA") {?>
                                <input type="text" class="form-control form-control-sm text-center text-white bg-warning" value="<?=$r['criticidad'];?>" aria-label="Disabled input" disabled readonly id="input_nivel_criticidad" >
                            <?php } else if($r['criticidad'] == "BAJO") {?>
                                <input type="text" class="form-control form-control-sm text-center text-white bg-info" value="<?=$r['criticidad'];?>" aria-label="Disabled input" disabled readonly id="input_nivel_criticidad" >
                            <?php } else if($r['criticidad'] == "MUY BAJO") {?>
                                <input type="text" class="form-control form-control-sm text-center text-white bg-success" value="<?=$r['criticidad'];?>" aria-label="Disabled input" disabled readonly id="input_nivel_criticidad" >
                            <?php } else if($r['criticidad'] == "N/A") {?>
                                <input type="text" class="form-control form-control-sm text-center text-white bg-light" value="<?=$r['criticidad'];?>" aria-label="Disabled input" disabled readonly id="input_nivel_criticidad" >
                                <?php }?>
                        </div>
                        <div class="mb-2 col-10">
                            <label for="Área" class="titulo-modal">Servicio</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['servicio'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="mb-2 col-12">
                            <label for="Servidor" class="titulo-modal">Canales</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['canales'];?>" aria-label="Disabled input" disabled readonly> 
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="mb-2 col-12">
                            <label for="ip" class="titulo-modal">Aplicativo</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['aplicativo'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>
                    <div class="row g-2">
                        <div class="mb-2 col-6">
                            <label for="Hostname" class="titulo-modal">UMAS</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['umas'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-6">
                            <label for="Sistema Operativo" class="titulo-modal">Cluster de Hypervisor</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['cluster_hypervisor'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>
                    <!-- <div class="row g-2">
                        <div class="mb-2 col-6">
                            <label for="Versión de S.O" class="titulo-modal">Conciliación de Seguridad</label>
                            <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['conciliacion_seguridad'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-6">
                            <label for="Base de datos" class="titulo-modal">Estatus de Seguridad</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['estatus_seguridad'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div> -->

                    <div class="row g-3">
                        <div class="mb-2 col-4">
                            <label for="Manejador de BD" class="titulo-modal">Ubicación</label><span class="text-muted"> (Edificio)</span>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['ubicacion'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-4">
                            <label for="Version de BD" class="titulo-modal">Rack</label><span class="text-muted"> (Actual)</span>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['rack'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-4">
                            <label for="bus" class="titulo-modal">Fila</label>
                            <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['fila'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>

                    <div class="row g-1">
                        <div class="mb-2 col-12">
                            <label for="capa tuxedo" class="titulo-modal">Direcciones IP</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['direcciones_ip'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>
                    
                    <div class="row g-2">
                        <div class="mb-2 col-6">
                            <label for="WebLogic" class="titulo-modal">Serial</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['serial'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-6">
                            <label for="F5 Comunicaciones" class="titulo-modal">Activo Fijo</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['activo_fijo'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>

                    <div class="row g-2">
                        <div class="mb-2 col-4">
                            <label for="ip f5" class="titulo-modal">Marca</label>
                            <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['marca'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-8">
                            <label for="Puerto F5" class="titulo-modal">Modelo</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['marca'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>

                    <div class="row g-3">
                        <div class="mb-2 col-6">
                            <label for="Ubicacion" class="titulo-modal">Ubicación</label>
                            <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['ubicacion'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-4">
                            <label for="rack" class="titulo-modal">Rack</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['rack'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-2">
                            <label for="fila" class="titulo-modal">fila</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['fila'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>
                    
                    <div class="row g-4">
                        <div class="mb-2 col-3">
                            <label for="Pools Vs" class="titulo-modal">Fin del Soporte</label><span class="text-muted"> (Técnico)</span>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['fin_soporte'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-3">
                            <label for="otros servicios asociados" class="titulo-modal">sockets</label><span class="text-muted"> (Procesadores físicos)</span>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['socket'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-3">
                            <label for="observacion general" class="titulo-modal">Cores</label><span class="text-muted"> (Total)</span>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['cores'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-3">
                            <label for="observacion general" class="titulo-modal">Memoria Ram</label><span class="text-muted"> (GB)</span>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['ram_gb'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>

                    <div class="row g-1">
                        <div class="mb-2 col-12">
                            <label for="observacion general" class="titulo-modal">Versión del Sistema Operativo</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['version_sistema_operativo'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>

                    <div class="row g-3">
                        <div class="mb-2 col-4">
                            <label for="observacion general" class="titulo-modal">Instancia de Base de Datos</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['instancia_bd'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-4">
                            <label for="observacion general" class="titulo-modal">Manejador de Base de Datos</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['tipo_bd'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-4">
                            <label for="observacion general" class="titulo-modal">Versión de Base de Datos</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['vs_bd'];?>" aria-label="Disabled input" disabled readonly>
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

               
<?php } if($_GET["value"] == 4){?>
    <h5 class="modal-title fw-bold titulo-modal" id="detalles_label">Detalles de Servidores <br>    
        Sistema Operativo: <span class="h6"><?= $r['sistema_operativo'];?></span> - Servidor: 
        <span class="h6"><?= $r['servidor_fisico'];?></span> - Virtual: 
        <span class="h6"><?= $r['servidor_virtual'];?></span> - Entorno: 
        <span class="h6"><?php if (isset($link)){ echo $link; }else{ echo "Todos"; } ?></span> - ID:
        <span class="h6"> <?= $r['id_codigo']?></span>
    </h5>
    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
      <div class="modal-body">
                <form action="">
                    <div class="row g-2">
                        <div class="mb-2 col-2">
                            <label for="nivel_criticidad" class="titulo-modal ">Nivel de Criticidad</label>
                            <?php if($r['criticidad'] == "MUY ALTO") {?>
                            <input type="text" class="form-control form-control-sm text-center text-white bg-danger" value="<?=$r['criticidad'];?>" aria-label="Disabled input" disabled readonly id="input_nivel_criticidad" >
                            <?php } else if($r['criticidad'] == "ALTO") {?>
                            <input type="text" class="form-control form-control-sm text-center text-white colors" value="<?=$r['criticidad'];?>" aria-label="Disabled input" disabled readonly id="input_nivel_criticidad" >
                            <?php } else if($r['criticidad'] == "MEDIA") {?>
                                <input type="text" class="form-control form-control-sm text-center text-white bg-warning" value="<?=$r['criticidad'];?>" aria-label="Disabled input" disabled readonly id="input_nivel_criticidad" >
                            <?php } else if($r['criticidad'] == "BAJO") {?>
                                <input type="text" class="form-control form-control-sm text-center text-white bg-info" value="<?=$r['criticidad'];?>" aria-label="Disabled input" disabled readonly id="input_nivel_criticidad" >
                            <?php } else if($r['criticidad'] == "MUY BAJO") {?>
                                <input type="text" class="form-control form-control-sm text-center text-white bg-success" value="<?=$r['criticidad'];?>" aria-label="Disabled input" disabled readonly id="input_nivel_criticidad" >
                            <?php } else if($r['criticidad'] == "N/A") {?>
                                <input type="text" class="form-control form-control-sm text-center text-white bg-light" value="<?=$r['criticidad'];?>" aria-label="Disabled input" disabled readonly id="input_nivel_criticidad" >
                                <?php }?>
                        </div>
                        <div class="mb-2 col-10">
                            <label for="Área" class="titulo-modal">Servicio</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['servicio'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="mb-2 col-12">
                            <label for="Servidor" class="titulo-modal">Canales</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['canales'];?>" aria-label="Disabled input" disabled readonly> 
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="mb-2 col-12">
                            <label for="ip" class="titulo-modal">Aplicativo</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['aplicativo'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>
                    <div class="row g-2">
                        <div class="mb-2 col-6">
                            <label for="Hostname" class="titulo-modal">UMAS</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['umas'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-6">
                            <label for="Sistema Operativo" class="titulo-modal">Cluster de Hypervisor</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['cluster_hypervisor'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>
                    <div class="row g-2">
                        <div class="mb-2 col-6">
                            <label for="Versión de S.O" class="titulo-modal">Conciliación de Seguridad</label>
                            <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['conciliacion_seguridad'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-6">
                            <label for="Base de datos" class="titulo-modal">Estatus de Seguridad</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['estatus_seguridad'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>

                    <div class="row g-3">
                        <div class="mb-2 col-4">
                            <label for="Manejador de BD" class="titulo-modal">Ubicación</label><span class="text-muted"> (Edificio)</span>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['ubicacion'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-4">
                            <label for="Version de BD" class="titulo-modal">Rack</label><span class="text-muted"> (Actual)</span>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['rack'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-4">
                            <label for="bus" class="titulo-modal">Fila</label>
                            <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['fila'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>

                    <div class="row g-1">
                        <div class="mb-2 col-12">
                            <label for="capa tuxedo" class="titulo-modal">Direcciones IP</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['direcciones_ip'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>
                    
                    <div class="row g-2">
                        <div class="mb-2 col-6">
                            <label for="WebLogic" class="titulo-modal">Serial</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['serial'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-6">
                            <label for="F5 Comunicaciones" class="titulo-modal">Activo Fijo</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['activo_fijo'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>

                    <div class="row g-2">
                        <div class="mb-2 col-4">
                            <label for="ip f5" class="titulo-modal">Marca</label>
                            <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['marca'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-8">
                            <label for="Puerto F5" class="titulo-modal">Modelo</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['marca'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>

                    <div class="row g-3">
                        <div class="mb-2 col-6">
                            <label for="Ubicacion" class="titulo-modal">Ubicación</label>
                            <input type="text" class="form-control form-control-sm text-center pequeño" value="<?=$r['ubicacion'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-4">
                            <label for="rack" class="titulo-modal">Rack</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['rack'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-2">
                            <label for="fila" class="titulo-modal">fila</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['fila'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>
                    
                    <div class="row g-4">
                        <div class="mb-2 col-3">
                            <label for="Pools Vs" class="titulo-modal">Fin del Soporte</label><span class="text-muted"> (Técnico)</span>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['fin_soporte'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-3">
                            <label for="otros servicios asociados" class="titulo-modal">sockets</label><span class="text-muted"> (Procesadores físicos)</span>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['socket'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-3">
                            <label for="observacion general" class="titulo-modal">Cores</label><span class="text-muted"> (Total)</span>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['cores'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-3">
                            <label for="observacion general" class="titulo-modal">Memoria Ram</label><span class="text-muted"> (GB)</span>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['ram_gb'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>

                    <div class="row g-1">
                        <div class="mb-2 col-12">
                            <label for="observacion general" class="titulo-modal">Versión del Sistema Operativo</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['version_sistema_operativo'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                    </div>

                    <div class="row g-3">
                        <div class="mb-2 col-4">
                            <label for="observacion general" class="titulo-modal">Instancia de Base de Datos</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['instancia_bd'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-4">
                            <label for="observacion general" class="titulo-modal">Manejador de Base de Datos</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['tipo_bd'];?>" aria-label="Disabled input" disabled readonly>
                        </div>
                        <div class="mb-2 col-4">
                            <label for="observacion general" class="titulo-modal">Versión de Base de Datos</label>
                            <input type="text" class="form-control form-control-sm text-center" value="<?=$r['vs_bd'];?>" aria-label="Disabled input" disabled readonly>
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