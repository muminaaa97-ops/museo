<?php
function obtener_estudiantes() {
    try {
        // Importar las credenciales
        $conexion = mysqli_connect(hostname:"localhost", username:"root", password:"", database:"cuchurrumines") or die ("error1");
        mysqli_select_db(mysql: $conexion, database: "cuchurrumines") or die ("error conectar base de datos");

        // Consulta SQL
        $sql = "SELECT * FROM alumnos;";

        // Realizar la consulta
        $consulta = mysqli_query($conexion, $sql);

        return $consulta;
        
    } catch (\Throwable $th) {
        var_dump($th);
    }
}

obtener_estudiantes();

?>