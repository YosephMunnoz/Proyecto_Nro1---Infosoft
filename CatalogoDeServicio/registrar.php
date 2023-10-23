<div class="container">
    <div class="card shadow mt-5">
      <div class="card-header h3 titulo">
        Creación del Catalogo de Servicios
      </div>
      <div class="card-body">
        <form method="POST" action="../conexion/register.php" name="form-register">
        <div class="row g-4">
            <div class="mb-2 col-3">
                <label for="criticidad" class="titulo-modal ">Nivel de Criticidad:</label>
                <select type="text" name="criticidad" id="criticidad" class="form-select form-select-sm" required>
                    <option value="">Elegir...</option>
                        <?php foreach($var as $r) { ?>
                    <option value="<?= $r['id']?>"><?= $r['nivel_criticidad'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-3">
                <label for="servicioAsociado" class="titulo-modal ">Servicio Asociado:</label>
                <select type="text" name="servicioAsociado" id="servicioAsociado" class="form-select form-select-sm" required>
                    <option value="">Elegir...</option>
                        <?php foreach($var2 as $r) { ?>
                    <option value="<?= $r['id']?>"><?= $r['servicio_asociado'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-3">
                <label for="canalAplicativo" class="titulo-modal ">Canal Aplicatico:</label>
                <select type="text" name="canalAplicativo" id="canalAplicativo" class="form-select form-select-sm" required>
                    <option value="">Elegir...</option>
                        <?php foreach($var3 as $r) { ?>
                    <option value="<?= $r['id']?>"><?= $r['canal_aplicativo'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-3">
                <label for="area" class="titulo-modal ">Área:</label>
                <select type="text" name="area" id="area" class="form-select form-select-sm" required>
                    <option value="">Elegir...</option>
                        <?php foreach($var4 as $r) { ?>
                    <option value="<?= $r['id']?>"><?= $r['area'];?></option>
                        <?php } ?>
                </select>
            </div>
        </div>
        <div class="row g-3">
            <div class="mb-2 col-4">
                <label for="server" class="titulo-modal ">Servidor:</label>
                <input type="text" name="server" id="server" class="form-control form-control-sm" placeholder="Ejemplo: TMP079" required>
            </div>
            <div class="mb-2 col-4">
                <label for="user" class="titulo-modal ">Nombre:</label><span class="text-body-secondary">(Host name)</span>
                <input type="text" name="user" id="user" class="form-control form-control-sm" placeholder="Ejemplo: TMP079" required>
            </div>
            <div class="mb-2 col-4">
                <label for="ip" class="titulo-modal ">IP:</label>
                <input type="text" name="ip" id="ip" class="form-control form-control-sm" placeholder="Ejemplo: 10.164.14.85" required>
            </div>
        </div>
        <div class="row g-3">
            <div class="mb-2 col-4">
                <label for="sistemaOperativo" class="titulo-modal ">Sistema Operativo:</label>
                <select type="text" name="sistemaOperativo" id="sistemaOperativo" class="form-select form-select-sm" required>
                    <option value="">Elegir...</option>
                        <?php foreach($var5 as $r) { ?>
                    <option value="<?= $r['id']?>"><?= $r['sistema_operativo'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-8">
                <label for="vs" class="titulo-modal ">Versión:</label><span class="text-body-secondary">(Sistema Operativo)</span>
                <select type="text" name="vs" id="vs" class="form-select form-select-sm" required>
                    <option value="">Elegir...</option>
                        <?php foreach($var6 as $r) { ?>
                    <option value="<?= $r['id']?>"><?= $r['vs_sistema_operativo'];?></option>
                        <?php } ?>
                </select>
            </div>
        </div>
        <div class="row g-3">
            <div class="mb-2 col-4">
                <label for="instancia" class="titulo-modal form-label">Nombre:</label><span class="text-body-secondary">(Instancia de Base de Datos - BBDD)</span>
                <select type="text" name="instancia" id="instancia" class="form-select form-select-sm" >
                    <option value="">Elegir...</option>
                        <?php foreach($var7 as $r) { ?>
                    <option value="<?= $r['id']?>"><?= $r['nombres'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-4">
                <label for="bbdd" class="titulo-modal ">Base de Datos:</label><span class="text-body-secondary">(Manejador o DBMS)</span>
                <select type="text" name="bbdd" id="bbdd" class="form-select form-select-sm" >
                    <option value="">Elegir...</option>
                        <?php foreach($var8 as $r) { ?>
                    <option value="<?= $r['id']?>"><?= $r['dbms'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-4">
                <label for="vsBbdd" class="titulo-modal ">Versión:</label><span class="text-body-secondary">(base de datos - BBDD)</span>
                <select type="text" name="vsBbdd" id="vsBbdd" class="form-select form-select-sm" >
                    <option value="">Elegir...</option>
                        <?php foreach($var9 as $r) { ?>
                    <option value="<?= $r['id']?>"><?= $r['vs_bd'];?></option>
                        <?php } ?>
                </select>
            </div>
        </div>
            <input type="hidden" name="regis" value="1">
            <button type="submit" class="btn btn-primary">Registrar</button>
        </form>
      </div>
    </div>
</div>