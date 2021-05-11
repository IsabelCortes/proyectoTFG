<div class="banner">
    <section class="container">
        <div>
            <?php
            if (!isset($_SESSION["usuario"])) {
            ?>
                <h1 class="my-5">ENTRENA CON NOSOTROS</h1>
                <h3 class="my-5">En Krato's Gym encontrarás justo lo que necesitas. ¡Ni más, ni menos!</h3>
                <!-- <button class="btn btn-light mb-5"><b>INSCRIBETE</b></button> -->
                <a class="btn btn-light mb-5" href="" data-toggle="modal" data-target="#modalRegister">
                    <b>INSCRIBETE</b>
                </a>
            <?php
            } else {
                $nombre = mysqli_fetch_assoc(mysqli_query($conexion, "SELECT nombre FROM usuarios WHERE cod_usuario = $_SESSION[codusu]"));
            ?>
                <h1 class="my-5">BIENVENIDO A KRATO'S GYM <?php echo '<br><span class="">' . ucfirst($nombre['nombre']) . '</span>' ?></h1>
            <?php
            }
            ?>
        </div>
    </section>
</div>

<div class="container">
    <section class="contenidoMain">
        <h1 class="my-5">ELIGE TU ENTRENAMIENTO IDEAL</h1>
        <h3 class="my-5">Entrenamientos para todo tipo de persona ajustados a tus necesidades</h3>

        <?php
        include "modulos/m_entrPred.php";
        ?>

        <?php
        if (!isset($_SESSION["usuario"])) {
        ?>
            <h3 class="my-5">¡O inicia sesión para crear el tuyo propio!</h3>
            <!-- <a class="btn btn-dark" href="views/v_login.php"><b>Iniciar Sesion</b></a> -->
            <a class="btn btn-dark" href="" data-toggle="modal" data-target="#modalLogin">
                <b>Iniciar Sesion</b>
            </a>
        <?php
        } else {
        ?>
            <h3 class="my-5">¡O crea tu propio entrenamiento!</h3>
            <a class="btn btn-dark" href="#"><b>Mi Entrenamiento</b></a>
        <?php } ?>
        <!-- <section class="horario">
            <h1>Horario</h1>
            <h3>Consulta nuestro horario</h3>
            <button class="btn btn-dark mb-3"><b>Horario</b></button>
        </section> -->
    </section>
    <br>
</div>