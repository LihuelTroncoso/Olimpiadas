<?php
    session_start();
    if(isset($_SESSION['usuario'])){
        header("location: index2.php");
    }

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="stylesheet" href="assets/css/styleLogin.css">
</head>
<?php

$servername = "127.0.0.1";
$contraseña="";
$database = "bd_museo";
$user = "root";

// Create connection
$conn = mysqli_connect($servername, $user, $contraseña, $database);
// Check connection
if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
}


?>
<body>    
    <header>
            <a href="../index.php">musET36</a>
    </header>
    <main>

        <div class="contenedor__todo">
            <div class="caja_atras">
                <div class="caja_atras_login">
                    <h3>¿Ya tienes una cuenta?</h3>
                    <p>Inicia sesion para acceder</p>
                    <button id="btn__iniciar-sesion">Iniciar Sesión</button>
                </div>
                <div class="caja_atras_register">
                    <h3>¿Aun no tienes una cuenta?</h3>
                    <p>Registrate para iniciar sesion</p>
                    <button id="btn__registrarse">Registrarse</button>
                </div>
            </div>

            <div class="contenedor__login-register">
                <form action="php/login_usuario.php" method="post" class="formulario__login">
                <h2>Iniciar Sesión</h2>
                            <input type="text" placeholder="Usuario" name="username">
                            <input type="password" placeholder="Contraseña" name="password">
                            <br><button>Entrar</button>
                        </form>
                        
                        <form action="php/registro_usuario.php" class="formulario__register" method="POST">
                            <h2>Registrarse</h2>
                            <input type="text" placeholder="Nombre completo" name="name">
                            <input type="text" placeholder="Correo Electronico" name="email">
                            <input type="text" placeholder="Usuario" name="username">
                            <input type="password" placeholder="Contraseña" name="password">
                            <button type="submit">Registrarse</button>
                </form>


            </div>


        </div>
    </main>
    <script src="assets/js/script.js"></script>
</body>
</html>