<?php

$HOSTNAME = "localhost";
$USERNAME = "root";
$BDPASSWORD = "";
$BDNAME = "cuentas";

$conectar = mysqli_connect($HOSTNAME, $USERNAME, $BDPASSWORD, $BDNAME);

if (!$conectar){
    echo '<script>alert("Error al conectar la DB)</script>';

} else {
    echo '<script>alert("Conexion exitosa")</script>';

}

?>