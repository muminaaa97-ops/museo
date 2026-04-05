<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Agregar Estudiante</title>
</head>
<body>
    <h1>Agregar un Estudiante</h1>
    <form action="escuela/alta-estudiantes.php" method="post" class="form-register" autocomplete="off">

    <section>

        <label>Nombre: <input type="text" name="nombre" class="input-100" required></label>

        <label>Apellido: <input type="text" name="apellido" class="input-100" required></label>

        <label>DNI: <input type="text" name="dni" class="input-100" required></label>

        <label>Email: <input type="email" name="email" class="input-100" required></label>

        <label>Fecha de Nacimiento: <input type="date" name="fecha_nacimiento" class="input-1000" required></label>

        <label>Dirección: <input type="text" name="direccion" class="input-100" required></label>

        <button type="submit">Guardar</button>

        <div class="div-account">
            <a href="escuela/listar-estudiantes.php">Ver lista de estudiantes</a>
        </div>
        
        
    </section>
    </form>
    
   
</body>
</html>
