<?php
    date_default_timezone_set('America/Caracas');
    if (session_start())
    {
    } 
    else
    {
	session_destroy();
	header('location:index.php');
    }
?>