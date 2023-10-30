<!-- Bloque de botones busqueda -->
<div class="container-fluid">
<h3 class="text-primary">Seleccione una plantilla</h3>
    <div class="card text-center mb-4">
        <div class="card-header">
            <ul class="nav nav-tabs card-header-tabs" id="nav-tab" role="tablist">
                <li class="nav-item" role="presentation">
                <button class="nav-link active" id="service-tab" data-bs-toggle="tab" data-bs-target="#service" type="button" role="tab" aria-controls="service" aria-selected="true">Service Asociado</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="canal-tab" data-bs-toggle="tab" data-bs-target="#canal" type="button" role="tab" aria-controls="canal" aria-selected="false">Canal y/o Aplicativo</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="area-tab" data-bs-toggle="tab" data-bs-target="#area" type="button" role="tab" aria-controls="area" aria-selected="false">Área</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="servidor-tab" data-bs-toggle="tab" data-bs-target="#servidor" type="button" role="tab" aria-controls="servidor" aria-selected="false">Servidor</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="ip-tab" data-bs-toggle="tab" data-bs-target="#ip" type="button" role="tab" aria-controls="ip" aria-selected="false">Ip</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="hostName-tab" data-bs-toggle="tab" data-bs-target="#hostName" type="button" role="tab" aria-controls="hostName" aria-selected="false">Host Name</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="sistemaOperativo-tab" data-bs-toggle="tab" data-bs-target="#sistemaOperativo" type="button" role="tab" aria-controls="sistemaOperativo" aria-selected="false">Sistema Operativo <span class="text-body-secondary">(SO)</span></button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="vs-tab" data-bs-toggle="tab" data-bs-target="#vs" type="button" role="tab" aria-controls="vs" aria-selected="false">Versión de Sistema Operativo</button>
            </li>
        </div>
        <?php include ("plantillas2.php");?>
    </div>

    <div class="card text-center mb-4">
        <div class="card-header">
            <ul class="nav nav-tabs card-header-tabs" id="nav-tab" role="tablist">
                <li class="nav-item" role="presentation">
                <button class="nav-link active" id="bd-tab" data-bs-toggle="tab" data-bs-target="#bd" type="button" role="tab" aria-controls="bd" aria-selected="true">Instancia de Base de Datos <span class="text-body-secondary">(BBDD)</span></button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="gestor-tab" data-bs-toggle="tab" data-bs-target="#gestor" type="button" role="tab" aria-controls="gestor" aria-selected="false">Gestor de Bases de datos <span class="text-body-secondary">(DBMS)</span></button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="vsBd-tab" data-bs-toggle="tab" data-bs-target="#vsBd" type="button" role="tab" aria-controls="vsBd" aria-selected="false">Versión del DBMS</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="bus-tab" data-bs-toggle="tab" data-bs-target="#bus" type="button" role="tab" aria-controls="bus" aria-selected="false">Bus</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="capa-tab" data-bs-toggle="tab" data-bs-target="#capa" type="button" role="tab" aria-controls="capa" aria-selected="false">Capa Tuxedo</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="web-tab" data-bs-toggle="tab" data-bs-target="#web" type="button" role="tab" aria-controls="web" aria-selected="false">WebLogic</button>
            </li>
        </div>
        <?php include ("plantillas3.php");?>
    </div>

    <div class="card text-center mb-4">
        <div class="card-header">
            <ul class="nav nav-tabs card-header-tabs" id="nav-tab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="f5-tab" data-bs-toggle="tab" data-bs-target="#f5" type="button" role="tab" aria-controls="f5" aria-selected="false">F5 Comunicaciones</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="ipf5-tab" data-bs-toggle="tab" data-bs-target="#ipf5" type="button" role="tab" aria-controls="ipf5" aria-selected="false">Ip F5</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="port-tab" data-bs-toggle="tab" data-bs-target="#port" type="button" role="tab" aria-controls="port" aria-selected="false">Puerto Ip de F5 Comunicaciones</button>
            </li>
        </div>
        <?php include ("plantillas4.php");?>
    </div>

    
</div>

        