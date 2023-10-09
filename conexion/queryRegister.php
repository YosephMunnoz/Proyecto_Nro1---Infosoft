<?php
    require_once ('conexion.php');

    $sql = "SELECT KEC_ID, KEC_CHARGE, KEC_ACTIVE FROM KE_CHARGE WHERE KEC_ACTIVE = 1";
    $query1 = mysqli_query($conex, $sql);
    $num1 = mysqli_num_rows($query1);

    $sql = "SELECT KETU_ID, KETU_TYPE_USER FROM KE_TYPE_USER";
    $query2 = mysqli_query($conex, $sql);

    $sql = "SELECT KES_ID, KES_STATUS FROM KE_STATUS";
    $query3 = mysqli_query($conex, $sql);

    $sql = "SELECT A.KEU_ID, A.KEU_NAME, A.KEU_LASTNAME, A.KEU_DOCUMENT, A.KEU_USER, A.KEU_EMAIL, B.KEC_CHARGE AS CHARGE, C.KETU_TYPE_USER AS TYPE, D.KES_STATUS AS STATUS, A.KEC_ID, A.KETU_ID, A.KES_ID FROM KE_USER A INNER JOIN KE_CHARGE B ON A.KEC_ID = B.KEC_ID INNER JOIN KE_TYPE_USER C ON A.KETU_ID = C.KETU_ID INNER JOIN KE_STATUS D ON A.KES_ID = D.KES_ID WHERE D.KES_ID = 1";
    $query4 = mysqli_query($conex, $sql);
    $num2 = mysqli_num_rows($query4);

?>