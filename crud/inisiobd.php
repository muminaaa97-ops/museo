<?php
$Usuario = $_POST['Usuario'];
$Contraseña = $_POST['Contraseña'];

$conexion = mysqli_connect("localhost", "root", "", "cuchurrumines");

// Preparar la consulta
$stmt = mysqli_prepare($conexion, "SELECT * FROM cliente WHERE Usuario = ? AND Contraseña = ?");

// Vincular los parámetros
mysqli_stmt_bind_param($stmt, "ss", $Usuario, $Contraseña);

// Ejecutar la consulta
mysqli_stmt_execute($stmt);

// Obtener resultados
$resultado = mysqli_stmt_get_result($stmt);
$filas = mysqli_num_rows($resultado);

if ($filas > 0) {
    echo '<script>alert("✅ Bienvenido.");
        window.location.href = "../registrar_alumno.php";
        </script>';
} else {
    echo '<script type ="text/javascript">
        alert("(❌ Hubo un error al iniciar sesion)");
        window.location.href = "../login.php";
    </script>';
}


?>