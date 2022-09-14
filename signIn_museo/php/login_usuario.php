<?php

    session_start();
    include 'conexion_bd.php';
    $username = $_POST['username'];
    $password = $_POST['password'];
  
    $validate_login = mysqli_query($conexion, "SELECT idUsers FROM users WHERE username='$username' and password='$password'");
    $arr = mysqli_fetch_row($validate_login);
    $query = "INSERT INTO logs(`Users_idUsers`, `Events_idEvents`) VALUES ('$arr[0]', 1);";
    if(mysqli_num_rows($validate_login) > 0){
        $_SESSION['username'] = $username;
        $ejecutar = mysqli_query($conexion, $query);
        header("location: ../index.php");
        exit();
    }else{
        echo'
        <script>
            alert("Usuario o contraseña incorrectos, vuelva a intentarlo");
            window.location="../index.php";
        </script>
        ';
        exit();
    }

?>