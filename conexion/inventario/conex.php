<?php

$conex = mysqli_connect ("localhost", "root","") or die ("No se puede establecer conexión");
mysqli_select_db($conex,"base_de_datos_del_conocimiento");
