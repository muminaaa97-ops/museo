<?php
    #<!-- Incluye funciones y obtiene la lista de estudiantes -->
    require ("select-estudiantes.php");    
    $consulta = obtener_estudiantes();
?>



    <section class="section_Estu">
       
        <h1 class="link">----- Tabla de alumnos -----</h1>
        <div>
            <table class="tabla_Estu">
                    <thead> 
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>DNI</th>
                            <th>Email</th>
                            <th>Fecha de Nacimiento</th>
                            <th>Dirección</th>
                        </tr>
                    </thead>
                    <tbody>

                    <?php #<!-- Bucle: una fila por vuelta, datos en $servicio -->
                    while($servicio = mysqli_fetch_assoc($consulta)) { ?> <!--Abre Llave-->

                        <tr>
                        <td><?php echo $servicio['id']; ?></td>
                        <td><?php echo $servicio['Nombre']; ?></td>
                        <td><?php echo $servicio['Apellido']; ?></td>
                        <td><?php echo $servicio['DNI']; ?></td>
                        <td><?php echo $servicio['Email']; ?></td>
                        <td><?php echo date("d/m/Y", strtotime($servicio['Fecha_Nacimiento'])); ?></td>
                        <td><?php echo $servicio['Direccion']; ?></td>
                        </tr>

                    <?php } ?> <!--Cierra Llave-->
                    
                </tbody>
            </table>
        </div>

        <div class="textobtn">
                <h2> Para ver volver a registrar alumnos</h2>
                <nav>
                        <a class="link" href="registrar_alumno.php"><h3>----- presione aqui -----</h3></a>
                </nav>
        </div>

    </section>




