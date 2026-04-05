<?php

$Nombre = $_POST['Nombre']; 
$Apellido = $_POST['Apellido'];
$Telefono = $_POST['Telefono'];
$DNI = $_POST['DNI'];
$Mail = $_POST['Mail'];
$Direccion = $_POST['Direccion'];
$Usuario = $_POST['Usuario'];
$Password = $_POST['password'];

$cripto = password_hash($Password, PASSWORD_DEFAULT);


$conexion = mysqli_connect(hostname:"localhost", username:"root", password:"", database:"cuchurrumines") or die ("error1");
mysqli_select_db(mysql: $conexion, database: "cuchurrumines") or die ("error conectar base de datos");




$sql = "INSERT INTO cliente (Nombre, Apellido, Telefono, DNI, Mail, Direccion, Usuario, Contraseña) VALUES ( '','$Nombre',' $Apellido',' $Telefono', '$DNI',' $Direccion', '$Usuario','$cripto')";

$ejecutar = mysqli_query($conexion, $sql);


if (!$ejecutar){  
        echo' <script type ="text/javascript">
    alert("(Hubo un error)");
    window.location.href = "registrarse.php";
    </script>';
    
}
else{


    echo' <script type ="text/javascript">
    alert("(Usuario creadoaaa)");
    window.location.href = "registrarse.php";
    </script>';
    

}

?>


