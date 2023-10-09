<?php
include '../conexion/queryRegister.php';
?>
<div class="container">
    <div class="card shadow mt-5">
      <div class="card-header h3 titulo">
        Creación de Usuarios
      </div>
      <div class="card-body">
        <form method="POST" action="../conexion/register.php" name="form-registerUser">
        <div class="row g-2">
            <div class="mb-2 col-6">
                <label for="name" class="titulo-modal ">Nombre:</label>
                <input type="text" name="name" id="name" class="form-control form-control-sm" placeholder="Ejemplo: Jose Carlos " required>
            </div>
            <div class="mb-2 col-6">
                <label for="lastName" class="titulo-modal ">Apellido:</label>
                <input type="text" name="lastName" id="lastName" class="form-control form-control-sm" placeholder="Ejemplo: Jimenez Garcia" required>
            </div>
        </div>
        <div class="row g-2">
            <div class="mb-2 col-6">
                <label for="CI" class="titulo-modal ">Cédula de Identidad</label>
                <input type="text" name="CI" id="CI" class="form-control form-control-sm" placeholder="Ejemplo: 19555555" required>
            </div>
            <div class="mb-2 col-6">
                <label for="user" class="titulo-modal ">Nombre de Usuario o alias</label>
                <input type="text" name="user" id="user" class="form-control form-control-sm" placeholder="Ejemplo: Jose" required>
            </div>
        </div>
        <div class="row g-2">
            <div class="mb-2 col-6">
                <label for="email" class="titulo-modal ">Correo Electrónico:</label>
                <input type="email" name="email" id="email" class="form-control form-control-sm" placeholder="Ejemplo: infosoft@infosoft.com.ve" required>
            </div>
            <div class="mb-2 col-6">
                <label for="password" class="titulo-modal ">contraseña:</label>
                <input type="password" name="password" id="password" class="form-control form-control-sm" required minlength="8">
            </div>
        </div>
        <div class="row g-3">
            <div class="mb-2 col-4">
                <label for="charge" class="titulo-modal form-label">Cargo de Usuario:</label>
                <select type="text" name="charge" id="charge" class="form-select form-select-sm" >
                    <option value="">Elegir...</option>
                        <?php foreach($query1 as $q) { ?>
                    <option value="<?= $q['KEC_ID']?>"><?= $q['KEC_CHARGE'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-4">
                <label for="typeUser" class="titulo-modal ">Tipo de Usuario:</label>
                <select type="text" name="typeUser" id="typeUser" class="form-select form-select-sm" >
                    <option value="">Elegir...</option>
                        <?php foreach($query2 as $q) { ?>
                    <option value="<?= $q['KETU_ID']?>"><?= $q['KETU_TYPE_USER'];?></option>
                        <?php } ?>
                </select>
            </div>
            <div class="mb-2 col-4">
                <label for="status" class="titulo-modal ">Estatus del Usuario:</label>
                <select type="text" name="status" id="status" class="form-select form-select-sm" >
                    <option value="">Elegir...</option>
                        <?php foreach($query3 as $q) { ?>
                    <option value="<?= $q['KES_ID']?>"><?= $q['KES_STATUS'];?></option>
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