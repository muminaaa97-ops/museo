<?php

$Nombre = $_POST['Nombre']; 
$Apellido = $_POST['Apellido'];
$Telefono = $_POST['Telefono'];
$DNI = $_POST['DNI'];
$Mail = $_POST['Mail'];
$Direccion = $_POST['Direccion'];   
$Usuario = $_POST['Usuario'];
$Password = $_POST['password'];




$conexion = mysqli_connect(hostname:"localhost", username:"root", password:"", database:"cuchurrumines") or die ("error1");
mysqli_select_db(mysql: $conexion, database: "cuchurrumines") or die ("error conectar base de datos");


    $stmt = $conexion->prepare("INSERT INTO cliente (Nombre, Apellido, Telefono, DNI, Mail, Direccion, Usuario, Contraseña) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssiissss", $Nombre, $Apellido, $Telefono, $DNI, $Mail, $Direccion, $Usuario, $Password);

    if ($stmt->execute()) {
        echo '<script>alert("✅ Estudiante guardado correctamente."); 
        window.location.href="registrarse.php";</script>';

    } else {
    
        $error = addslashes($stmt->error); 
        echo "<script>alert('❌ Error al guardar: $error'); 
        window.location.href = 'registrarse.php';</script>";

    }

    $stmt->close();
    $conexion->close();


?>
