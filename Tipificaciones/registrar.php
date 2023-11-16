<div class="container">
    <div class="card shadow mt-5">
        <div class="card-header h3 titulo">
            Creación de la Matriz de Tipificaciones
        </div>
        <div class="card-body">
            <form method="POST" action="../../../Infosoft3/conexion/tipificaciones/formTipificaciones.php" name="form-regisTipificaciones">
                <div class="row g-3">
                    <div class="mb-2 col-3">
                        <label for="areas" class="titulo-modal">Área</label>
                        <select type="text" id="areas" name="areas" class="form-select form-select-sm" required>
                            <option value="">Elegir...</option>
                            <?php foreach($result9 as $v) { ?>
                            <option value="<?= $v['KEA_AREA']?>"><?= $v['KEA_AREA'];?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="mb-2 col-2">
                        <label for="type_caso" class="titulo-modal">Tipo de caso</label>
                        <select type="text" id="type_caso" name="type_caso" class="form-select form-select-sm" required>
                            <option value="">Elegir...</option>
                            <?php foreach($result1 as $v) { ?>
                            <option value="<?= $v['KETP_CASE_TYPE']?>"><?= $v['KETP_CASE_TYPE'];?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="mb-2 col-7">
                        <label for="resumen" class="titulo-modal">Resumen:</label>
                        <select type="text" id="resumen" name="resumen" class="form-select form-select-sm" required>
                            <option value="">Elegir...</option>
                            <?php foreach($result2 as $v) { ?>
                            <option value="<?= $v['KETPR_DESCRIPTION']?>"><?= $v['KETPR_DESCRIPTION'];?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="row g-1 mt-2">
                    <div class="col-12 text-center">
                        <span class="fs-4"><strong>Operaciones</strong></span>
                    </div>
                </div>
                <hr class="sidebar-divider bg-dark" />
                <div class="row g-3">
                    <div class="mb-2 col-4">
                        <label for="nivel_op1" class="titulo-modal">Nivel 1</label>
                        <select type="text" id="nivel_op1" name="nivel_op1" class="form-select form-select-sm" required>
                            <option value="">Elegir...</option>
                            <?php foreach($result3 as $v) { ?>
                            <option value="<?= $v['KETPO1_DESCRIPTION']?>"><?= $v['KETPO1_DESCRIPTION'];?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="mb-2 col-4">
                        <label for="nivel_criticidad" class="titulo-modal">Nivel 2</label>
                        <select type="text" id="nivel_op2" name="nivel_op2" class="form-select form-select-sm" required>
                            <option value="">Elegir...</option>
                            <?php foreach($result4 as $v) { ?>
                            <option value="<?= $v['KETPO2_DESCRIPTION']?>"><?= $v['KETPO2_DESCRIPTION'];?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="mb-2 col-4">
                        <label for="nivel_criticidad" class="titulo-modal">Nivel 3</label>
                        <select type="text" id="nivel_op3" name="nivel_op3" class="form-select form-select-sm" required>
                            <option value="">Elegir...</option>
                            <?php foreach($result5 as $v) { ?>
                            <option value="<?= $v['KETPO3_DESCRIPTION']?>"><?= $v['KETPO3_DESCRIPTION'];?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="row g-1 mt-2">
                    <div class="col-12 text-center">
                        <span class="fs-4"><strong>Producción</strong></span>
                    </div>
                </div>
                <hr class="sidebar-divider bg-dark" />
                <div class="row g-3">
                    <div class="mb-2 col-4">
                        <label for="nivel_op1" class="titulo-modal">Nivel 1</label>
                        <select type="text" id="nivel_p1" name="nivel_p1" class="form-select form-select-sm" required>
                            <option value="">Elegir...</option>
                            <?php foreach($result6 as $v) { ?>
                            <option value="<?= $v['KETPP1_DESCRIPTION']?>"><?= $v['KETPP1_DESCRIPTION'];?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="mb-2 col-4">
                        <label for="nivel_criticidad" class="titulo-modal">Nivel 2</label>
                        <select type="text" id="nivel_p2" name="nivel_p2" class="form-select form-select-sm" required> 
                            <option value="">Elegir...</option>
                            <?php foreach($result7 as $v) { ?>
                            <option value="<?= $v['KETPP2_DESCRIPTION']?>"><?= $v['KETPP2_DESCRIPTION'];?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="mb-2 col-4">
                        <label for="nivel_criticidad" class="titulo-modal">Nivel 3</label>
                        <select type="text" id="nivel_p3" name="nivel_p3" class="form-select form-select-sm" required>
                            <option value="">Elegir...</option>
                            <?php foreach($result8 as $v) { ?>
                            <option value="<?= $v['KETPP3_DESCRIPTION']?>"><?= $v['KETPP3_DESCRIPTION'];?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="card-footer text-end">
                    <input type="hidden" id="opcion" name="opcion" value="<?= $_GET['tipificaciones']?>" />
                    <input type="hidden" id="area" name="area" value="<?= $_GET['area']?>" />
                    <input type="hidden" id="id" name="id" value="0">
                    <input type="hidden" id="value" name="value" value="0">
                    <input type="hidden" name="regis" value="insert" />
                    <input class="btn btn-secondary " type="reset" value="Borrar">
                    <button type="submit" class="btn btn-outline-primary">Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>