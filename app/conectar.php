<?php
function conectarDB(){

        $servidor = "localhost";
        $usuario = "recursos_gespro";
        $password = "Hola123Gespro";
        $bd = "recursos_espanol";

    $conexion = mysqli_connect($servidor, $usuario, $password,$bd);

        if($conexion){
            echo "";
        }else{
            echo 'Ha sucedido un error inexperado en la conexion de la base de datos
';
        }

    return $conexion;
}
?>
