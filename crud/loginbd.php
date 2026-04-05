

<?php
$Usuario = $_POST['Usuario'];
$Contraseña = $_POST['password'];

$conexion = mysqli_connect("localhost", "root", "", "cuchurrumines");

// 1️⃣ Buscar solo el usuario
$consulta = "SELECT * FROM cliente WHERE Usuario = '$Usuario'";
$resultado = mysqli_query($conexion, $consulta);

if ($resultado && mysqli_num_rows($resultado) > 0) {
    $fila = mysqli_fetch_assoc($resultado);
    $hashGuardado = $fila['Contraseña'];

    // 2️⃣ Verificar contraseña
    if (password_verify($Contraseña, $hashGuardado)) {
        echo '<script>alert("✅ Bienvenido."); 
        window.location.href="../registrar_alumno.php";</script>';
    } else {
        echo '<script>alert("❌ Contraseña incorrecta"); 
        window.location.href="../login.php";</script>';
    }
} else {
    echo '<script>alert("❌ Usuario no encontrado"); 
    window.location.href="../login.php";</script>';
}
?>
