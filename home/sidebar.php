<?php
    if(isset($_SESSION['userId']) && $_SESSION['typeId'] == 1) 
    {
?>
<!-- Sidebar -->
<ul class="navbar-nav sidebar sidebar-dark accordion small lateral" id="accordionSidebar">
        
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../home/index.php">
        <div class="sidebar-brand-icon">
            <i class="bi bi-database-exclamation text-warning"></i>
        </div>
        <h6 class="sidebar-brand-text mx-2 mt-3 lateral fw-bolder">I<span class="text-warning">S</span>  Knowledge</h6>
    </a>
    
    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link" href="../home/index.php">
            <i class="fas fa-home"></i>
            <span>Inicio</span>
        </a>
    </li>
    

    <!-- Divider -->
    <hr class="sidebar-divider bg-white">
    
    <!-- Heading -->
    <div class="sidebar-heading small"> 
        Información
    </div>

     <!-- Nav Item - administrativos -->
     <li class="nav-item">
        <a class="nav-link" href="#">
            <i class="fas fa-fw fa-poll"></i>
            <span>Administrativos</span>
        </a>
    </li>

    <!-- Nav Item - areas -->
    <li class="nav-item">
        <a class="nav-link" href="#">
            <i class="fas fa-fw fa-layer-group"></i>
            <span>Áreas</span>
        </a>
    </li> 

    <!-- Nav Item - catalogo Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#catalogo" aria-expanded="true" aria-controls="catalogo">
            <i class="fas fa-book"></i>
            <span>Catálogo de Servicios</span>
        </a>
        <div id="catalogo" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Registrar nuevos items:</h6>
                <a class="collapse-item" href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=REGISTRAR">Registrar</a>
                <h6 class="collapse-header">Servicios y/o Aplicativos:</h6>
                <a class="collapse-item" href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=ACTIVACION">Activación</a>
                <a class="collapse-item" href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=EMPRESARIALES">Empresariales</a>
                <a class="collapse-item" href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=FACTURACION">Facturación</a>
                <a type="button" class="collapse-item" href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=RECARGAS" onclick="recargas();">Recargas</a>
                <a class="collapse-item" href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=TASACION">Tasación</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">General:</h6>
                <a class="collapse-item" href="../../Infosoft3/CatalogoDeServicio/index.php?value=3&servicio=0">Catálogo</a>
            </div>
        </div>
    </li>   
    
    <!-- Nav Item - Documentos -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Documentos" aria-expanded="true" aria-controls="Documentos">
            <i class="fas fa-fw fa-folder-open"></i>
            <span>Documentos</span>
        </a>
        <div id="Documentos" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Documentación de área:</h6>
                <a class="collapse-item" href="../../Infosoft3/Documentos/index.php?area=automatizacion&value=1">Automatización</a>
                <a class="collapse-item" href="../../Infosoft3/Documentos/index.php?area=backup&value=2">Backup</a>
                <a class="collapse-item" href="../../Infosoft3/Documentos/index.php?area=bbdd&value=3">Base de Datos</a>
                <a class="collapse-item" href="../../Infosoft3/Documentos/index.php?area=comunicaciones&value=4">Comunicaciones</a>
                <a class="collapse-item" href="../../Infosoft3/Documentos/index.php?area=unix&value=5">Unix</a>
                <a class="collapse-item" href="../../Infosoft3/Documentos/index.php?area=windows&value=6">Windows</a>
            </div>
        </div>
    </li>
    
    <!-- Nav Item - Inventario -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#inventario" aria-expanded="true" aria-controls="inventario">
            <i class="fas fa-fw fa-box-open"></i>
            <span>Inventario</span>
        </a>
        <div id="inventario" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Registrar nuevos items:</h6>
                <a class="collapse-item" href="../../Infosoft3/Inventario/index.php?inventario=Registrar&nombre=">Registrar</a>
                <h6 class="collapse-header">Resumen:</h6>
                <a class="collapse-item" href="../../Infosoft3/Inventario/index.php?inventario=Resumen&nombre=">Resumen</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">Inventario CCO:</h6>
                <a class="collapse-item" href="../../Infosoft3/Inventario/index.php?inventario=Servidores Fisicos&nombre=">Servidores Fisicos</a>
                <a class="collapse-item" href="../../Infosoft3/Inventario/index.php?inventario=Servidores Virtuales&nombre=">Servidores Virtuales</a>
                <a class="collapse-item" href="../../Infosoft3/Inventario/index.php?inventario=Servidores Unix&nombre=">Servidores Unix</a>
                <a class="collapse-item" href="../../Infosoft3/Inventario/index.php?inventario=Servidores Windows&nombre=">Servidores Windows</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">General:</h6>
                <a class="collapse-item" href="../../Infosoft3/Inventario/index.php?inventario=0&nombre=">Inventario CCO</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Tipificaciones -->
    <li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#tipificaciones" aria-expanded="true" aria-controls="tipificaciones">
            <i class="fas fa-fw fa-bookmark"></i>
            <span>Tipificaciones</span> 
        </a>
        <div id="tipificaciones" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Instrucciones:</h6>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=1&area=">Instrucciones</a>
                <h6 class="collapse-header">Registrar nueva matriz:</h6>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=2&area=">Registrar</a>
                <h6 class="collapse-header">Matriz de Tipificaciones:</h6>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=3&area=automatizacion&value=1">Automatización</a>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=3&area=backup&value=1">Backup</a>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=3&area=bbdd&value=1">Base de Datos</a>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=3&area=comunicaciones&value=1">Comunicaciones</a>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=3&area=unix&value=1">Unix</a>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=3&area=windows&value=1">Windows</a>
            </div>
        </div>
    </li>


    
    <!-- Divider -->
    <hr class="sidebar-divider bg-white">

    <!-- Heading -->
    <div class="sidebar-heading">      
        Users Settings
    </div>
        
    <!-- Nav Item - Settings-User -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#settingsUser" aria-expanded="true" aria-controls="settingsUser" >
            <i class="fas fa-fw fa-users"></i>
            <span>Users</span>
        </a>
        <div id="settingsUser" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Creación:</h6>
                <a class="collapse-item" href="../../Infosoft3/settings_users/index.php?option=1">Crear usuarios</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">Configuraciones:</h6>
                <a class="collapse-item" href="../../Infosoft3/settings_users/index.php?option=2">Crear de cargos</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">Reporte:</h6>
                <a class="collapse-item" href="../../Infosoft3/settings_users/index.php?option=3">Listado de usuarios</a>
            </div>
        </div>
    </li>

    
    <!-- Nav Item - Settings-User -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#settings" aria-expanded="true" aria-controls="settings" >
            <i class="fas fa-tools"></i>
            <span>Configuración</span>
        </a>
        <div id="settings" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Creación de Plantillas:</h6>
                <a class="collapse-item" href="../../Infosoft3/settings/index.php?option=1">Crear Plantillas</a>
            </div>
        </div>
    </li>
    
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">
    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
    
        
</ul>
<!-- End of Sidebar -->  
<?php } else { ?>
    <!-- Sidebar -->
<ul class="navbar-nav sidebar sidebar-dark accordion small lateral" id="accordionSidebar">
        
        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../home/index.php">
            <div class="sidebar-brand-icon">
                <i class="bi bi-database-exclamation text-warning"></i>
            </div>
            <h6 class="sidebar-brand-text mx-2 mt-3 lateral fw-bolder">I<span class="text-warning">S</span>  Knowledge</h6>
        </a>
        
        <!-- Divider -->
        <hr class="sidebar-divider my-0">
    
        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link" href="../home/index.php">
                <i class="fas fa-home"></i>
                <span>Inicio</span>
            </a>
        </li>
    
        <!-- Divider -->
        <hr class="sidebar-divider bg-white">
        
        <!-- Heading -->
        <div class="sidebar-heading small"> 
            Información
        </div>
    
        <!-- Nav Item - catalogo Collapse Menu -->
       <!-- Nav Item - administrativos -->
     <li class="nav-item">
        <a class="nav-link" href="#">
            <i class="fas fa-fw fa-poll"></i>
            <span>Administrativos</span>
        </a>
    </li>

    <!-- Nav Item - areas -->
    <li class="nav-item">
        <a class="nav-link" href="#">
            <i class="fas fa-fw fa-layer-group"></i>
            <span>Áreas</span>
        </a>
    </li> 

    <!-- Nav Item - catalogo Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#catalogo" aria-expanded="true" aria-controls="catalogo">
            <i class="fas fa-book"></i>
            <span>Catálogo de Servicios</span>
        </a>
        <div id="catalogo" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Servicios y/o Aplicativos:</h6>
                <a class="collapse-item" href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=ACTIVACION">Activación</a>
                <a class="collapse-item" href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=EMPRESARIALES">Empresariales</a>
                <a class="collapse-item" href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=FACTURACION">Facturación</a>
                <a type="button" class="collapse-item" href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=RECARGAS" onclick="recargas();">Recargas</a>
                <a class="collapse-item" href="../../Infosoft3/CatalogoDeServicio/index.php?servicio=TASACION">Tasación</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">General:</h6>
                <a class="collapse-item" href="../../Infosoft3/CatalogoDeServicio/index.php?value=3&servicio=0">Catálogo</a>
            </div>
        </div>
    </li>   
    
    <!-- Nav Item - Documentos -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Documentos" aria-expanded="true" aria-controls="Documentos">
            <i class="fas fa-fw fa-folder-open"></i>
            <span>Documentos</span>
        </a>
        <div id="Documentos" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Documentación de área:</h6>
                <a class="collapse-item" href="../../Infosoft3/Documentos/index.php?area=automatizacion&value=1">Automatización</a>
                <a class="collapse-item" href="../../Infosoft3/Documentos/index.php?area=backup&value=1">Backup</a>
                <a class="collapse-item" href="../../Infosoft3/Documentos/index.php?area=bbdd&value=1">Base de Datos</a>
                <a class="collapse-item" href="../../Infosoft3/Documentos/index.php?area=comunicaciones&value=1">Comunicaciones</a>
                <a class="collapse-item" href="../../Infosoft3/Documentos/index.php?area=unix&value=1">Unix</a>
                <a class="collapse-item" href="../../Infosoft3/Documentos/index.php?area=windows&value=1">Windows</a>
            </div>
        </div>
    </li>
    
    <!-- Nav Item - Inventario -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#inventario" aria-expanded="true" aria-controls="inventario">
            <i class="fas fa-fw fa-box-open"></i>
            <span>Inventario</span>
        </a>
        <div id="inventario" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Resumen:</h6>
                <a class="collapse-item" href="../../Infosoft3/Inventario/index.php?inventario=Resumen&nombre=">Resumen</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">Inventario CCO:</h6>
                <a class="collapse-item" href="../../Infosoft3/Inventario/index.php?inventario=Servidores Fisicos&nombre=">Servidores Fisicos</a>
                <a class="collapse-item" href="../../Infosoft3/Inventario/index.php?inventario=Servidores Virtuales&nombre=">Servidores Virtuales</a>
                <a class="collapse-item" href="../../Infosoft3/Inventario/index.php?inventario=Servidores Unix&nombre=">Servidores Unix</a>
                <a class="collapse-item" href="../../Infosoft3/Inventario/index.php?inventario=Servidores Windows&nombre=">Servidores Windows</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">General:</h6>
                <a class="collapse-item" href="../../Infosoft3/Inventario/index.php?inventario=0&nombre=">Inventario CCO</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Tipificaciones -->
    <li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#tipificaciones" aria-expanded="true" aria-controls="tipificaciones">
            <i class="fas fa-fw fa-bookmark"></i>
            <span>Tipificaciones</span> 
        </a>
        <div id="tipificaciones" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Instrucciones:</h6>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=1&area=">Instrucciones</a>
                <h6 class="collapse-header">Matriz de Tipificaciones:</h6>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=3&area=automatizacion&value=1">Automatización</a>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=3&area=backup&value=1">Backup</a>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=3&area=bbdd&value=1">Base de Datos</a>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=3&area=comunicaciones&value=1">Comunicaciones</a>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=3&area=unix&value=1">Unix</a>
                <a class="collapse-item" href="../../Infosoft3/tipificaciones/index.php?tipificaciones=3&area=windows&value=1">Windows</a>
            </div>
        </div>
    </li>
    
    
        
        <!-- Divider -->
        <hr class="sidebar-divider bg-white">
        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>
    </ul>
    <!-- End of Sidebar --> 
    <?php }?>