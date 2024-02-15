<?php

include_once 'conexion.php';


$nombres = $_REQUEST['Nombre'];//$get, $post y $request
$appe = $_REQUEST['Apellido'];
$codigo = $_REQUEST['Codigo'];
$correo = $_REQUEST['Correo'];
$edad = $_REQUEST['Edad'];
$telef = $_REQUEST['Telefono'];
$direcc = $_REQUEST['Direccion'];
$usuario = $_REQUEST['Usuario'];
$password = $_REQUEST['Password'];
$password1 = $_REQUEST['Password1'];

// confirmando si el correo, usuario y otros datos que deberian ser unicos son unicos

$checkingdata = "SELECT * FROM administradores WHERE Cod_Adm = '$codigo'";
$report = mysqli_query ($conectar, $checkingdata);

if (mysqli_num_rows($report) > 0) {
    echo '<script>alert("Este codigo de docente ya esta registrado.")</script>';
    echo '<script> window.history.back() </script>';
} else {

    $checkingdata = "SELECT * FROM administradores WHERE Correo_Adm = '$correo'";
    $report = mysqli_query ($conectar, $checkingdata);
    
        if (mysqli_num_rows($report) > 0) {
            echo '<script>alert("Este correo ya esta registrado.")</script>';
            echo '<script> window.history.back() </script>';
        } else {
            $checkingdata = "SELECT * FROM administradores WHERE Num_Cel_Adm = '$telef'";
            $report = mysqli_query ($conectar, $checkingdata);

            if (mysqli_num_rows($report) > 0) {
                echo '<script>alert("Este número de celular ya esta registrado.")</script>';
                echo '<script> window.history.back() </script>';
            } else {
                
                $checkingdata = "SELECT * FROM administradores WHERE Usuario_Adm = '$usuario'";
                $report = mysqli_query ($conectar, $checkingdata);
    
                if (mysqli_num_rows($report) > 0) {
                    echo '<script>alert("Este usuario ya esta registrado.")</script>';
                    echo '<script> window.history.back() </script>';
                } else {

                    if ($password != $password1){
                        echo '<script>alert("Las contraseñas no son iguales")</script>';
                        echo '<script> window.history.back() </script>';
                    } else {

                        $insertar = "INSERT INTO `administradores`(`Nombre_Adm`, `Apellido_Adm`, `Cod_Adm`, `Correo_Adm`, `Edad_Adm`, `Num_Cel_Adm`, `Direccion_Adm`, `Usuario_Adm`, `Password_Adm`) VALUES ('$nombres','$appe', '$codigo', '$correo','$edad','$telef','$direcc','$usuario','$password')";
                        $guardar = mysqli_query($conectar, $insertar);

                    if (!$guardar){
                        echo '<script>alert("Los datos no fueron almacenados en la BD")</script>';
                        echo '<script> window.history.back() </script>';

                    } else { 
                        echo '<script>alert("Los datos fueron almacenados correctamente")</script>';
                    }
                    }
                }
            }
        }
    }

    mysqli_close($conectar);


?>