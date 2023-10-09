<?php
    // credenciales de acceso a la base de datos
    $DATABASE_HOST = 'localhost';
    $DATABASE_USER = 'root';
    $DATABASE_PASS = '';
    $DATABASE_NAME = 'infosoft_knowledge';
    $conex = mysqli_connect ($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);

     if(mysqli_connect_error()){
        //Si se encuentra un error en la conexión
        exit('No se puede establecer conexión:' . mysqli_connect_error());
     }
