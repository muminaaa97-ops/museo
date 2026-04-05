<?php

$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$dni = $_POST['DNI'];
$email = $_POST['Email'];
$fecha_nacimiento = $_POST['Fecha_Nacimiento'];
$direccion = $_POST['Direccion'];



$conexion = mysqli_connect(hostname:"localhost", username:"root", password:"", database:"cuchurrumines") or die ("error1");
mysqli_select_db(mysql: $conexion, database: "cuchurrumines") or die ("error conectar base de datos");

$stmt = $conexion->prepare("INSERT INTO alumnos (Nombre, Apellido, DNI, Email, Fecha_Nacimiento, Direccion) VALUES (?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssisss", $nombre, $apellido, $dni, $email, $fecha_nacimiento, $direccion);

if ($stmt->execute()) {
    echo '<script>alert("✅ Estudiante guardado correctamente."); 
    window.location.href="../registrar_alumno.php";</script>';

} else {
  
    $error = addslashes($stmt->error); // escapa comillas
    echo "<script>alert('❌ Error al guardar: $error'); 
    window.location.href = '../registrar_alumno.php';</script>";

}

$stmt->close();
$conexion->close();


?>