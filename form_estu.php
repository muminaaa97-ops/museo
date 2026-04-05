        
        <form action="crud/alta-estudiantes.php" method="post" class="form_alumn" autocomplete="off">
            <h2>Registro de estudiantes</h2>

            <section class="tablaalumn">
                <section class="alumnos">
                <div class="palabra"><label>Nombre:</label></div>
                <input type="text" name="nombre" class="largo" required>
                </section>

                <section class="alumnos">
                <div class="palabra"><label>Apellido:</label></div>
                <input type="text" name="apellido" class="largo" required>
                </section>

                <section class="alumnos">
                <div class="palabra"><label>DNI:</label></div>
                <input type="text" name="DNI" class="largo" required>
                </section>
                
                <section class="alumnos">
                <div class="palabra"><label>Email:</label></div>
                <input type="text" name="Email" class="largo" required>
                </section>


                <section class="alumnos">
                <div class="palabra"><label>Fecha de Naacimiento:</label></div>
                <input class="calendario" type="date" name="Fecha_Nacimiento" class="largo" required>
                </section>

                <section class="alumnos">
                <div class="palabra"><label>Direccion:</label></div>
                <input type="text" name="Direccion" class="largo" required>
                </section>

            </section>
            
            <input type="submit" value="registrar alumno" >

            <div class="textobtn">
                <h4> Para ver alumnos registrados</h4>
                <nav>
                        <a href="alumnos_reg.php"><h5> has click aqui</h5></a>
                </nav>
                </div>

        </form>

