<?php
$Usuario=$_POST['Usuario'];
$Contraseña=$_POST['Contraseña'];

$conexion=mysqli_connect("localhost", "root", "", "cuchurrumines");
$consulta="SELECT * FROM cliente WHERE Usuario='$Usuario' and Contraseña='$Contraseña'";
$resultado=mysqli_query($conexion, $consulta);
$filas=mysqli_num_rows($resultado);

if ($filas>0){
    
    echo '<script>alert("✅ Bienvenido."); 
    window.location.href="../registrar_alumno.php";</script>';
}

else {
    echo' <script type ="text/javascript">
    alert("(❌ Hubo un error al iniciar sesion)");
    window.location.href = "../login.php";
    </script>';
}