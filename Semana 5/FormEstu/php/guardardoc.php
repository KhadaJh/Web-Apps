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
$carr = $_REQUEST['Carrera'];

// confirmando si el correo, usuario y otros datos que deberian ser unicos son unicos

$checkingdata = "SELECT * FROM docentes WHERE Cod_Est = '$codigo'";
$report = mysqli_query ($conectar, $checkingdata);

if (mysqli_num_rows($report) > 0) {
    echo '<script>alert("Este codigo de docente ya esta registrado.")</script>';
    echo '<script> window.history.back() </script>';
} else {

    $checkingdata = "SELECT * FROM docentes WHERE Correo_Est = '$correo'";
    $report = mysqli_query ($conectar, $checkingdata);
    
        if (mysqli_num_rows($report) > 0) {
            echo '<script>alert("Este correo ya esta registrado.")</script>';
            echo '<script> window.history.back() </script>';
        } else {
            $checkingdata = "SELECT * FROM docentes WHERE Num_Cel_Est = '$telef'";
            $report = mysqli_query ($conectar, $checkingdata);

            if (mysqli_num_rows($report) > 0) {
                echo '<script>alert("Este número de celular ya esta registrado.")</script>';
                echo '<script> window.history.back() </script>';
            } else {
                
                $checkingdata = "SELECT * FROM docentes WHERE Usuario_Est = '$usuario'";
                $report = mysqli_query ($conectar, $checkingdata);
    
                if (mysqli_num_rows($report) > 0) {
                    echo '<script>alert("Este usuario ya esta registrado.")</script>';
                    echo '<script> window.history.back() </script>';
                } else {

                    if ($password != $password1){
                        echo '<script>alert("Las contraseñas no son iguales")</script>';
                        echo '<script> window.history.back() </script>';
                    } else {

                        $insertar = "INSERT INTO `docentes`(`Nombre_Doc`, `Apellido_Doc`, `Cod_Doc`, `Correo_Doc`, `Edad_Doc`, `Num_Cel_Doc`, `Direccion_Doc`, `Usuario_Doc`, `Password_Doc`, `Carrera`) VALUES ('$nombres','$appe', '$codigo', '$correo','$edad','$telef','$direcc','$usuario','$password','$carr')";
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